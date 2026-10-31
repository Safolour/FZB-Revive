
#R:255 G:0 B:255->0
scoreboard players set @s armor.rainbow_armor.r 16711680
scoreboard players set @s armor.rainbow_armor.g 0
scoreboard players set b armor.rainbow_armor.b 255

scoreboard players operation timer armor.rainbow_armor.timer *= -1 number
scoreboard players add timer armor.rainbow_armor.timer 255
scoreboard players operation b armor.rainbow_armor.b *= timer armor.rainbow_armor.timer
scoreboard players operation b armor.rainbow_armor.b /= 255 number
scoreboard players operation @s armor.rainbow_armor.b = b armor.rainbow_armor.b