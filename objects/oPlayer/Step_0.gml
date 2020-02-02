/* movement */
//walking
speed = 0
if alive = true {
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
}

//spotted
spotted = instance_place(x,y,oConeOfVision)
if instance_exists(spotted) {
	oEnemy.followPlayer = true
} else {
	oEnemy.followPlayer = false
}

//hiding stage
hidden = instance_place(x,y,oVan)
if (instance_exists(hidden)) {
	hiding = true
}
else {
	hiding = false
}
	
/* cloaking */
if timeSinceCloaked <= cloakCoolDown and coolDownReady = false {
	timeSinceCloaked++
}else {
	coolDownReady = true
}

/* invisability */
if coolDownReady = true and cloaked != true {
	if keyboard_check(vk_space) {
		cloaked = true
	}
}

if cloaked = true {
	if timeCloaked <= cloakLength {
		invisable = true
		timeCloaked++
	} else {
		invisable = false
		timeCloaked = 0
		coolDownReady = false
		cloaked = false
		timeSinceCloaked = 0
	}
}

if invisable == true or hiding == true {
	visable = false
} else {
	visable = true
}


//sprite setting
if visable = true {
	sprite_index = sPlayer
	oEnemy.followPlayer = true
} else {
	sprite_index = sPlayerInvs
	oEnemy.followPlayer = false
}

/* camera? */
halfViewWidth = camera_get_view_width(view_camera[0]) /2
halfViewHeight = camera_get_view_height(view_camera[0]) / 2
camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight)

//if visable = true {

//speeder repair state
if (oSpeeder.partsMissing == 0) {
	image_alpha = false
}
/*		
death = instance_place(x,y,oBullet)
if instance_exists(death) {
	alive = false
}
*/

if alive = false {
	sprite_index = sPlayerDeath
}

/* about to hit a wall */
if place_meeting(x+hspeed, y+vspeed, oBlockage) {
    //keep hspeed
    oldHSpeed = hspeed
    hspeed = 0
    while 
        place_meeting(x+hspeed + sign(oldHSpeed), y, oBlockage) = false and //check if theres room with our current speed
        abs(hspeed) < abs(oldHSpeed) // check we havnt restored all of our speed and only use abs values
    {
        hspeed = hspeed + sign(oldHSpeed)
    }
    //keep vspeed
    oldVSpeed = vspeed
    vspeed = 0
    while 
        place_meeting(x, y+vspeed + sign(oldVSpeed), oBlockage) = false and //check if theres room with our current speed
        abs(vspeed) < abs(oldVSpeed) // check we havnt restored all of our speed and only use abs values
    {
        vspeed = vspeed + sign(oldVSpeed)
    }
}