
#R:0 G:255 B:0->255
scoreboard players set @s armor.rainbow_armor.r 0
scoreboard players set @s armor.rainbow_armor.g 65280
scoreboard players set b armor.rainbow_armor.b 255

scoreboard players operation b armor.rainbow_armor.b *= timer armor.rainbow_armor.timer
scoreboard players operation b armor.rainbow_armor.b /= 255 number
scoreboard players operation @s armor.rainbow_armor.b = b armor.rainbow_armor.b