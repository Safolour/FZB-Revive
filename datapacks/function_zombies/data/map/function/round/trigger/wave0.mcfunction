
scoreboard players set extra0 round 0

execute if score round game.state matches 30 if score wave round matches 12 run scoreboard players set timer round 800
execute if score round game.state matches 30 if score wave round matches 12 run function zombie:skill/nether/guardian/init
