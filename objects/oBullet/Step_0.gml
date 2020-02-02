/// @description Insert description here
// You can write your code in this editor
bullet_destroyed = instance_place(x,y,oWall)

if instance_exists(bullet_destroyed){
	instance_destroy()
}
