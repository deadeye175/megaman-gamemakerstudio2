// keep me out of things horizontally
if place_meeting(x+hspeed, y, wall) {
    if hspeed < 0 {  // i'm about to hit on the left
        //move_contact_solid(180, hspeed)
    }
    else { // i'm about to hit on the right
        //move_contact_solid(0, hspeed)
    }
    hspeed = 0
}

// keep me out of things vertically
if place_meeting(x, y+vspeed+gravity, wall) {
    if vspeed < 0 {  // i'm about to hit on the top
        //move_contact_solid(90, vspeed)
    }
    else {  // i'm about to hit on the bottom
		//show_message("bottom hit eminent")
        //move_contact_solid(270, vspeed)
        gravity = 0
    }
    vspeed = 0
}
// if i'm off the ground, give me gravity
else if !place_meeting(x, y+normalGravity, wall) {
    gravity = normalGravity
}

// moving right
if keyboard_check_direct(vk_right) {
    // is there space for me to move right?
	if !place_meeting(x+normalSpeed, y, wall) {
        sprite_index = runright
		hspeed = normalSpeed
    }
}
// moving left
if keyboard_check_direct(vk_left) {
    // is there space for me to move left?
	if !place_meeting(x-normalSpeed, y, wall) {
        sprite_index = runleft
		hspeed = -normalSpeed
    }
}

if keyboard_check_released(vk_right){
	sprite_index = heroSprite
}
if keyboard_check_released(vk_left){
	sprite_index = idleleft
}

// jumping
// am i on the ground, and is there space above my head to jump?
if keyboard_check_pressed(vk_space) and place_meeting(x, y+normalGravity, wall)
and !place_meeting(x, y-jumpSpeed, wall) {
	sprite_index = jump
	vspeed = -jumpSpeed
}

if(global.heroHealth <= 0){
	instance_destroy()
	show_message("You died.")
	game_restart()
}
// friction to slow me down horizontally
hspeed *= .9