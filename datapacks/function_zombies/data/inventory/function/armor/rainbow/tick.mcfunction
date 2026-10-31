
execute unless score @s armor.rainbow_armor.speed matches 1..255 run scoreboard players set @s armor.rainbow_armor.speed 5
execute unless score @s armor.rainbow_armor.phase = @s armor.rainbow_armor.phase run scoreboard players set @s armor.rainbow_armor.phase 0

scoreboard players operation @s armor.rainbow_armor.timer += @s armor.rainbow_armor.speed
scoreboard players operation timer armor.rainbow_armor.timer = @s armor.rainbow_armor.timer
execute if score timer armor.rainbow_armor.timer matches 255.. run scoreboard players set timer armor.rainbow_armor.timer 255
execute if score @s armor.rainbow_armor.phase matches 0 run function inventory:armor/rainbow/0
execute if score @s armor.rainbow_armor.phase matches 1 run function inventory:armor/rainbow/1
execute if score @s armor.rainbow_armor.phase matches 2 run function inventory:armor/rainbow/2
execute if score @s armor.rainbow_armor.phase matches 3 run function inventory:armor/rainbow/3
execute if score @s armor.rainbow_armor.phase matches 4 run function inventory:armor/rainbow/4
execute if score @s armor.rainbow_armor.phase matches 5 run function inventory:armor/rainbow/5
function inventory:armor/rainbow/color
execute unless score @s armor.rainbow_armor.timer matches 255.. run return fail
scoreboard players set @s armor.rainbow_armor.timer 0
scoreboard players add @s armor.rainbow_armor.phase 1
scoreboard players set @s[scores={armor.rainbow_armor.phase=6..}] armor.rainbow_armor.phase 0