execute if entity @s[tag=!skill.magmaslime.death] run function zombie:skill/remains/magmaslime/size/tick

scoreboard players add @s zombie.remains.magmaslime.skill_timer 1
execute if score @s zombie.remains.magmaslime.skill_timer matches ..80 store result score random zombie.random run random value 0..10
execute if score @s zombie.remains.magmaslime.skill_timer matches ..80 if score random zombie.random matches 0 run scoreboard players add @s zombie.remains.magmaslime.skill_timer 5
scoreboard players reset random zombie.random
execute if score @s zombie.remains.magmaslime.skill_timer matches ..120 run return 0

scoreboard players add @s zombie.remains.magmaslime.size 1
scoreboard players set @s zombie.remains.magmaslime.skill_timer 0
execute if entity @s[tag=!skill.magmaslime.death] run function zombie:skill/remains/magmaslime/tp/init
execute if score @s zombie.remains.magmaslime.size matches 10.. run return 0

scoreboard players set @s zombie.remains.magmaslime.size.skill_timer 1
scoreboard players add @s zombie.health 300
playsound entity.magma_cube.squish record @a ~ ~ ~ 1 1
