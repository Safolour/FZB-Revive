
#R:255->0 G:255 B:0
scoreboard players set @s armor.rainbow_armor.g 65280
scoreboard players set @s armor.rainbow_armor.b 0
scoreboard players set r armor.rainbow_armor.r 16711680

scoreboard players operation timer armor.rainbow_armor.timer *= -1 number
scoreboard players add timer armor.rainbow_armor.timer 255
scoreboard players operation r armor.rainbow_armor.r /= 255 number
scoreboard players operation r armor.rainbow_armor.r *= timer armor.rainbow_armor.timer
scoreboard players operation @s armor.rainbow_armor.r = r armor.rainbow_armor.r
