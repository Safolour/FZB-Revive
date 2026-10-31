
#R:0->255 G:0 B:255
scoreboard players set @s armor.rainbow_armor.g 0
scoreboard players set @s armor.rainbow_armor.b 255
scoreboard players set r armor.rainbow_armor.r 16711680

scoreboard players operation r armor.rainbow_armor.r /= 255 number
scoreboard players operation r armor.rainbow_armor.r *= timer armor.rainbow_armor.timer
scoreboard players operation @s armor.rainbow_armor.r = r armor.rainbow_armor.r