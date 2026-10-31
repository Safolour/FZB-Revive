
#R:255 G:0->255 B:0
scoreboard players set @s armor.rainbow_armor.r 16711680
scoreboard players set @s armor.rainbow_armor.b 0

scoreboard players set g armor.rainbow_armor.g 65280

scoreboard players operation g armor.rainbow_armor.g *= timer armor.rainbow_armor.timer
scoreboard players operation g armor.rainbow_armor.g /= 255 number
scoreboard players operation @s armor.rainbow_armor.g = g armor.rainbow_armor.g
