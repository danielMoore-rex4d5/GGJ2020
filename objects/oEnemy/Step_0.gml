//bouncing off wall
if instance_place(x + speed, y + speed, oBlockage) {
	direction += 45
}
//facing
image_angle = direction

if followPlayer = true and distance_to_object(oPlayer) < 400{
	move_towards_point(oPlayer.x,oPlayer.y, 250 / room_speed)
}
visionRange = 350;
visionWidth = 30;
if(instance_exists(oPlayer) &&
   point_distance(x,y,oPlayer.x,oPlayer.y) < visionRange &&
   abs(angle_difference(image_angle, point_direction(x,y,oPlayer.x,oPlayer.y))) < visionWidth){
        ///The player is within my cone of vision!
	move_towards_point(oPlayer.x,oPlayer.y, 250 / room_speed)
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
   
/*
vision.direction = direction
vision.image_angle = image_angle
vision.x = oEnemy.x
vision.y = oEnemy.y
//vision

/*
shooting.direction = direction
shooting.image_angle = image_angle
