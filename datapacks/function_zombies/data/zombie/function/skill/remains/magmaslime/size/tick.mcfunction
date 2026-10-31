execute unless score @s zombie.remains.magmaslime.size.skill_timer = @s zombie.remains.magmaslime.size.skill_timer run scoreboard players add @s zombie.remains.magmaslime.size.skill_timer 0
execute if score @s zombie.remains.magmaslime.size.skill_timer matches 0 run return 0

scoreboard players operation @s zombie.remains.magmaslime.size.add = @s zombie.remains.magmaslime.size
scoreboard players set 20 zombie.number 20
scoreboard players operation @s zombie.remains.magmaslime.size.add *= 20 zombie.number
scoreboard players reset 20 zombie.number
scoreboard players operation @s zombie.remains.magmaslime.size.add += @s zombie.remains.magmaslime.size.skill_timer
execute store result storage zombie size float 0.05 run scoreboard players get @s zombie.remains.magmaslime.size.add
#data modify storage zombie size set string storage zombie size 0 3
function zombie:skill/remains/magmaslime/size/attribute with storage zombie
data remove storage zombie size
execute if score @s zombie.remains.magmaslime.size matches 1.. if score @s zombie.remains.magmaslime.size.skill_timer matches 1 run data merge entity @s {Size:0}
scoreboard players add @s zombie.remains.magmaslime.size.skill_timer 1
execute if score @s zombie.remains.magmaslime.size.skill_timer matches ..20 run return 0

scoreboard players set @s zombie.remains.magmaslime.size.skill_timer 0
attribute @s scale base set 1
execute store result entity @s Size int 1 run scoreboard players get @s zombie.remains.magmaslime.size
scoreboard players reset @s zombie.remains.magmaslime.size.add
playsound entity.magma_cube.squish record @a ~ ~ ~ 1 1
