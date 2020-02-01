/* movement */
//walking
speed = 0
if keyboard_check(ord("W")) {
	vspeed -= mySpeed
}
if keyboard_check(ord("S")) {
	vspeed += mySpeed
}
if keyboard_check(ord("A")) {
	hspeed -= mySpeed
}
if keyboard_check(ord("D")) {
	hspeed += mySpeed
}

/* invisability */
if visable = true {
	if keyboard_check(vk_space) {
		//instance_create_layer(x,y,"Instances",oInvs)
		//chnage visability
		visable = false
	}
}

//invisibility fading
if visableTimeAlive < visableLifeTime {
	visableTimeAlive++
} else {
	visable = true
	visableTimeAlive = 0
}

//spotted
spotted = instance_place(x,y,oConeOfVision)

if instance_exists(spotted) {
	oEnemy.followPlayer = true
} else {
	oEnemy.followPlayer = false
}

//sprite setting
if visable = true {
	sprite_index = sPlayer
} else {
	sprite_index = sPlayerInvs
}

/* camera? */
halfViewWidth = camera_get_view_width(view_camera[0]) /2
halfViewHeight = camera_get_view_height(view_camera[0]) / 2
camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight)

//if visable = true {
	