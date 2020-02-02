direction = random(360)
image_angle = direction
runSpeed = 250 / room_speed
walkSpeed = 120 /room_speed
speed = walkSpeed


followPlayer = false
//firing
firing = false
secondsSinceFired = 2
gunReloadTime = 2 * room_speed
readyToShoot = true


//sprite set up
//image_xscale = image_xscale * 1/8
//image_yscale = image_xscale


/*discarded code
if instance_exists(oGame) {
	vision = instance_create_layer(x,y,"Instances",oVision)

}
