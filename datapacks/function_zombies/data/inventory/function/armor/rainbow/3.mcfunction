
#R:0 G:255->0 B:255
scoreboard players set @s armor.rainbow_armor.r 0
scoreboard players set @s armor.rainbow_armor.b 255
scoreboard players set g armor.rainbow_armor.g 65280

scoreboard players operation timer armor.rainbow_armor.timer *= -1 number
scoreboard players add timer armor.rainbow_armor.timer 255
scoreboard players operation g armor.rainbow_armor.g *= timer armor.rainbow_armor.timer
scoreboard players operation g armor.rainbow_armor.g /= 255 number
scoreboard players operation @s armor.rainbow_armor.g = g armor.rainbow_armor.g