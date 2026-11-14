scoreboard players add @s zombie.nether.warped.warpedskeleton.skill_timer 1
execute store result score random zombie.random run random value 0..5
execute if score @s zombie.nether.warped.warpedskeleton.skill_timer matches ..50 if score random zombie.random matches 0..1 run scoreboard players add @s zombie.nether.warped.warpedskeleton.skill_timer 3
scoreboard players reset random zombie.random

execute if score @s zombie.nether.warped.warpedskeleton.skill_timer matches 96 run function zombie:skill/nether/warped/warped_skeleton/shoot
execute if score @s zombie.nether.warped.warpedskeleton.skill_timer matches 106 run function zombie:skill/nether/warped/warped_skeleton/shoot
execute if score @s zombie.nether.warped.warpedskeleton.skill_timer matches ..106 run return 0
scoreboard players set @s zombie.nether.warped.warpedskeleton.skill_timer 0



return 0
execute on target if entity @s[type=player,scores={stat.player=1},distance=..20] run tag @s add target
execute unless entity @a[tag=target] run return 0

execute if entity @a[tag=target,distance=..10] run effect give @s slowness 1 255 true

execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
playsound entity.allay.hurt record @a ~ ~ ~ 1.5 2
playsound minecraft:entity.arrow.shoot

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedskeleton","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] run tp @s ~ ~1.5 ~
tag @a[tag=target] remove target
