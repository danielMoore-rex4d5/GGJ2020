if (partsMissing == 0) {
	sprite_index = sSpeederRepaired
	if readyToShoot == true {
		shooting = instance_create_layer(x,y,"Instances",oSpeederBullet)
	readyToShoot = false
	}
	shooting.direction = direction
	shooting.image_angle = image_angle
	shooting.speed = -700/room_speed
	x -= 4
}