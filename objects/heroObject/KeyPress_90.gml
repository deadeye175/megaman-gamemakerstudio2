if(weaponmode == 1 and weapononeammo > 0){
	weapononeammo -= 1
	p = instance_create_layer(x, y, "Instances", projectileObject)
	p.speed = 10
	p.direction = direction
}

if(weaponmode == 2 and weapontwoammo > 0){
	weapontwoammo -= 1
	p = instance_create_layer(x, y, "Instances", projectileObject)
	p.speed = 10
	p.direction = direction - 15
	p = instance_create_layer(x, y, "Instances", projectileObject)
	p.speed = 10
	p.direction = direction
	p = instance_create_layer(x, y, "Instances", projectileObject)
	p.speed = 10
	p.direction = direction + 15
}