execute if entity @s[tag=origin.pickaxe.impact_sound] run scoreboard players remove @s origin.stage 1
execute if entity @s[tag=origin.pickaxe.impact_sound,scores={origin.stage=..0}] at @s run playsound minecraft:block.stone.break player @a[scores={system.room=4..},distance=..24] ~ ~ ~ 1.5 1
tag @s[tag=origin.pickaxe.impact_sound,scores={origin.stage=..0}] remove origin.pickaxe.impact_sound
scoreboard players remove @s origin.fx_age 1
execute if score @s origin.fx_age matches ..0 run kill @s
