tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]

scoreboard players add @s zombie.remains.magmaslimeboss.skill_timer 1
#execute if score @s zombie.remains.magmaslimeboss.size matches 20.. if score @s zombie.remains.magmaslimeboss.skill_timer matches 3 run playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 1 1
execute unless score @s zombie.remains.magmaslimeboss.skill_timer matches 4.. run return 0

#execute if score @s zombie.remains.magmaslimeboss.size matches 30.. run playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 1 1
execute store result storage zombie size int 1 run scoreboard players get @s zombie.remains.magmaslimeboss.size
function zombie:skill/remains/magmaslimeboss/size with storage zombie
data remove storage zombie size

playsound entity.magma_cube.squish record @a ~ ~ ~ 3 1
playsound entity.magma_cube.squish record @a ~ ~ ~ 3 0

scoreboard players add @s zombie.remains.magmaslimeboss.size 1
scoreboard players set @s zombie.remains.magmaslimeboss.skill_timer 0

execute if score @s zombie.remains.magmaslimeboss.size matches 40 run function zombie:skill/remains/magmaslimeboss/critical
execute if score @s zombie.remains.magmaslimeboss.size matches 40.. run playsound block.note_block.pling record @a ~ ~ ~ 3 2 1
execute if score @s zombie.remains.magmaslimeboss.size matches 51.. run function zombie:skill/remains/magmaslimeboss/critical0
