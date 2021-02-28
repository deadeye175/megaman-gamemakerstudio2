shootTimer -= 1

if(shootTimer < 1){
	p = instance_create_layer(x, y, "Instances", enemyProjectileObject)
	p.speed = 15
	directiontoshoot = point_direction(x, y, heroObject.x, heroObject.y)
	p.direction = directiontoshoot
	shootTimer = shootInterval
}
if(enemyHealth <= 0){
	instance_destroy()
}