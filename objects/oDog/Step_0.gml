DogAI(oDogBed)


/*
visionRange = 350;
visionWidth = 30;

if(instance_exists(oPlayer) &&
   point_distance(x,y,oPlayer.x,oPlayer.y) < visionRange &&
   abs(angle_difference(image_angle, point_direction(x,y,oPlayer.x,oPlayer.y))) < visionWidth){
        ///The player is within my cone of vision!
	sitting = false
	sprite_index = sDog
	move_towards_point(oPlayer.x,oPlayer.y, 400 / room_speed)
} else {
	goingToSit = instance_place(x,y,oDogBed)
	if instance_exists(goingToSit) {
		sitting = true
	} else {
		sitting = false
		move_towards_point(oDogBed.x,oDogBed.y, 200 / room_speed)
	}
}
if sitting = true {
	speed = 0
	sprite_index = sDogSitting
}

*/