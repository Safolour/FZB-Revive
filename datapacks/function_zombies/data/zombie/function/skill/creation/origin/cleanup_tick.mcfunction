execute unless entity @s[tag=origin.fx] run return run function zombie:skill/creation/origin/destination_cleanup
scoreboard players add @s zombie.skill_timer 1
execute store result score #origin.x zombie.skill_timer run data get entity @s transformation.scale[0] 100
execute if score @s zombie.skill_timer matches 1..2 run scoreboard players add #origin.x zombie.skill_timer 30
execute if score @s zombie.skill_timer matches 4.. run scoreboard players remove #origin.x zombie.skill_timer 101
execute if score #origin.x zombie.skill_timer matches ..57 run scoreboard players set #origin.x zombie.skill_timer 57
execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get #origin.x zombie.skill_timer
execute store result score #origin.y zombie.skill_timer run data get entity @s transformation.scale[1] 100
execute if score @s zombie.skill_timer matches 1..2 run scoreboard players add #origin.y zombie.skill_timer 30
execute if score @s zombie.skill_timer matches 4.. run scoreboard players remove #origin.y zombie.skill_timer 101
execute if score #origin.y zombie.skill_timer matches ..57 run scoreboard players set #origin.y zombie.skill_timer 57
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get #origin.y zombie.skill_timer
execute store result score #origin.z zombie.skill_timer run data get entity @s transformation.scale[2] 100
execute if score @s zombie.skill_timer matches 1..2 run scoreboard players add #origin.z zombie.skill_timer 30
execute if score @s zombie.skill_timer matches 4.. run scoreboard players remove #origin.z zombie.skill_timer 101
execute if score #origin.z zombie.skill_timer matches ..57 run scoreboard players set #origin.z zombie.skill_timer 57
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get #origin.z zombie.skill_timer
execute if score #origin.x zombie.skill_timer matches ..57 if score #origin.y zombie.skill_timer matches ..57 if score #origin.z zombie.skill_timer matches ..57 run kill @s
