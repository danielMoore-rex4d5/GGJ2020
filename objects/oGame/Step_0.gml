/* menu commands */
if keyboard_check(ord("R")) {
	game_restart()
}
if keyboard_check(vk_escape) {
	game_end()
}

//setting full screen
window_set_fullscreen(true)

/* camera 
//view_object[0] = oPlayer
camera_set_view_target(view_camera[0],oPlayer)