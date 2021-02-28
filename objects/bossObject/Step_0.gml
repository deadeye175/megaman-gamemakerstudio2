if(bosshealth <= 0){
	instance_destroy()
	show_message("You beat the boss! You win!")
	game_end()
}