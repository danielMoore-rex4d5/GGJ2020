/*
//bouncing off wall
speed = walkSpeed
if instance_place(x + speed, y + speed, oBlockage) {
	speed = 0
	direction += 45
}
//new bouncing off wall*/
hmeet = place_meeting(x+hspeed, y, oBlockage)

if(hmeet)
{
    hspeed = -hspeed;
}
vmeet = place_meeting(x, y+vspeed, oBlockage)
if(vmeet)
{
    vspeed = -vspeed;
}


//facing
image_angle = direction

if followPlayer = true and distance_to_object(oPlayer) < 400 and !(vmeet or hmeet){
	move_towards_point(oPlayer.x,oPlayer.y, runSpeed)
}
visionRange = 300;
visionWidth = 30;
if(instance_exists(oPlayer) &&
   point_distance(x,y,oPlayer.x,oPlayer.y) < visionRange &&
   abs(angle_difference(direction, point_direction(x,y,oPlayer.x,oPlayer.y))) < visionWidth &&
   !instance_exists(oPlayer.hidden)){
        ///The player is within my cone of vision!
	move_towards_point(oPlayer.x,oPlayer.y, runSpeed)
	firing = true
} else {
	firing = false
}

if secondsSinceFired >= gunReloadTime and readyToShoot == false{
	readyToShoot = true
} else {
	secondsSinceFired++
}


if firing == true and readyToShoot == true{
	shooting = instance_create_layer(x,y,"Instances",oBullet)
	readyToShoot = false
	secondsSinceFired = 0
	shooting.direction = direction
	shooting.image_angle = image_angle
	shooting.speed = 700/room_speed
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




   
/*
vision.direction = direction
vision.image_angle = image_angle
vision.x = oEnemy.x
vision.y = oEnemy.y
//vision

/*
shooting.direction = direction
shooting.image_angle = image_angle
