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

if keyboard_check(vk_space) {
	//sprite chnage
	//goingInvisable = 
	instance_create_layer(x,y,"Instances",oInvs)
	//chnage visability
	visable = false
}

/* camera? */
halfViewWidth = camera_get_view_width(view_camera[0]) /2
halfViewHeight = camera_get_view_height(view_camera[0]) / 2

camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight)

//if visable = true {
	