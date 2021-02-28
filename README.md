# megaman-gamemakerstudio2
# Installing
Before attempting to run the game, you must first install a program known as GameMaker Studio 2, which was created by YoYo Games. The free trial is fine, but I believe it may require an account to be made. After installing it and downloading the game itself, you need to start GameMaker, click open on the main screen, then open the .yyp file in the root folder. After opening the project file, simply click on the “Build” button at the top of the screen, followed by “Run.” This will build and compile the game, allowing it to be played. I am unable to test this, but I believe that it should run fine on both Windows and Mac computers.
# Controls
“Left arrow key” – Move left
“Right arrow key” – Move right
“Space bar” – Jump
“Z button” – Fire
“X button” – Change ammunition type
# Gameplay
The game was created as an assignment for CS339 – Game Design at Jacksonville State University in Alabama. The goal of the project was to emulate the original Mega Man series for the Nintendo Entertainment System, first released in 1987. 
One of the main differences between my version of the game and the original is the ability to shoot in nearly any direction; in the original series, the protagonist could only shoot to his left and right, which led to a form of strategy when you had to hit an enemy that was flying from above. In my version, the direction you fire depends on either the technical direction you are currently moving or the direction you last moved. What that means is, if you are holding the right arrow key and fire, the projectile will move towards the right; if the last button you pressed was left and you press fire, the projectile will still travel left. This also affects jumping; if you press the jump button and hit the Z button as you are ascending, the bullet will travel up in some direction. Similarly, if you are descending after hitting the jump button and press the Z button, the bullet will travel down in some direction. This mechanic allows the player to shoot enemies both above them by jumping and below them by falling. 
The game also contains an ammunition and health mechanic; coming into contact with an enemy or getting hit by an enemy projectile lowers the protagonist’s health, which is detailed in the top left corner. If the hero’s health reaches zero, then a dialog box pops up detailing this information, before the game is reset to the beginning. The ammunition mechanic encourages the player to conserve ammo, rather than firing everywhere randomly, as the game can become unbeatable if that is done too often. Of course, the player can collect health boosts and ammo boxes in order to prolong their gameplay. 
Lastly, the game contains multiple weapons and a boss; by pressing the X button, the player can swap between a simple single fire weapon and a weapon that fires a blast in a chosen direction with multiple projectiles firing at the same time. The boss is simple; deplete their health bar detailed in the top right corner and you win the game, in which case it will close after a dialog box pops up detailing your victory.
# Design
Each of the sprites for the game come from a website known as “The Spriters Resource,” who take the sprites (basically, the animations) from games and post them online for people to use in other games, videos, artwork, etc. The sprites I downloaded for my game come from the pages for Mega Man 2 and 3. 
The actual programming language that is used to code the game is known as GameMaker Language, or GML, which was created by YoYo Games. While it is different in some ways, it is very similar to Java in its syntax.
I will explain how the game works in detail; when the protagonist of the game is first loaded onto a screen of the game, it sets up variables to be used later, including his normal running speed in pixels moved per frame, the speed of his jump, the gravity that affects him, his depth (his closeness to the “camera” of the game,) the ammunition for weapons 1 and 2, and the default weapon mode. 
In the “step” area of the hero object, it checks for certain things every frame of the game. This includes checking if the hero is touching a wall, which prevents him from going through it, checking if the hero is jumping, which makes gravity pull him downwards, if the right arrow key is being pressed and a wall is not being touched, which causes him to move 5 pixels per frame in the right direction and changes his sprite to his “moving-right” animation, if the left arrow key is being pressed, which does everything mentioned before, except in the left direction and with the “moving-left” animation, if the right arrow key has been released after being pressed, which causes the sprite to change to the “stationary-right” one, if the left arrow key has been released after being pressed, which does the same thing but with the “stationary-left” one, if the space bar has been pressed and the hero is not currently jumping or hitting a wall, which causes the hero to jump at a speed of 17.5 pixels per second, as well as changing his sprite to the “jumping” one, and finally, a command that makes his horizontal speed lower, making the controls smoother to use.
In the “draw” area of the hero object, it draws unused text at a specific location on the screen. The “draw GUI” area puts text on the top left corner of the screen that lists the hero’s ammunition for weapons 1 and 2, as well as the mode his weapon is currently in, all written in the color green for vision help.
In the “key press – Z” area of the hero object, it checks the weapon that is currently being used, lowers the ammo count of it by one, then fires that specific weapon. If it is weapon mode 1, it creates a projectile at the hero’s X and Y coordinates that moves 10 pixels a frame in the direction the player is moving or last moved. If it is weapon mode 2, it creates three projectiles at the hero’s X and Y coordinates that move 10 pixels a frame and moves them in the previously mentioned direction, as well as 15 degrees more than it and 15 degrees less than it. The “key press – X” code is simple; if the hero’s weapon is currently mode 1, it becomes 2, and if it is 2, it becomes 1.
The collision events help in various ways as well; if the hero touches an ammo box, it gives 10 ammo for weapon mode 1 and 3 for weapon mode 2, if they touch the boss, their health lowers by 2 for each frame they are in contact, if they touch either type of enemy, their health lowers by 1 for each frame, if they touch an enemy projectile, they lose 10 health immediately, if they pick up a health box, their health increases by 25, if the hero falls off of the screen, they go to the next screen (this plays a role in getting to the boss fight, as the hero must walk off,) and if the game has been started, then the hero is given 200 health.
All of this information listed above only applies to the protagonist of the game. Other interesting design elements include enemies that fire projectiles operating on a timer, both enemy types having health bars that are not drawn on screen (normal enemies are destroyed after 3 hits, firing enemies after 2,) the hero’s projectiles disappear after hitting a wall or enemy, along with the enemies’ projectiles disappearing after hitting the hero or a wall, an area with a risk-vs.-reward situation (there is an area with a fair bit of ammo and health, but the hero must go past a large amount of enemies to get to it,) as well as a number of other design elements.
#Credits
Most of the code was written by me, Adam Parker, while some of it was written by my Game Design professor David Thornton, which was taken from his lectures and prototypes. All sprites in the game come from the “The Spriters Resource” pages for Mega Man 2 and 3.
