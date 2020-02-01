direction = random(360)
speed = 250 / room_speed

followPlayer = false
//firing
firing = false
secondsSinceFired = 2
gunReloadTime = 2 * room_speed
readyToShoot = true

//sprite set up
image_xscale = image_xscale * 1/8
image_yscale = image_xscale


/*discarded code
if instance_exists(oGame) {
	vision = instance_create_layer(x,y,"Instances",oVision)

}