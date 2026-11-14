tag @s add mob.skill
tag @s add titan.lightning.target
scoreboard players operation @s origin.owner = #titan.light.owner origin.owner
scoreboard players add #next origin.fx_id 1
scoreboard players operation @s origin.fx_id = #next origin.fx_id
scoreboard players set @s origin.age 0
# Observed complete lifetimes: 40..68 rotations. 40..70 is the inferred random envelope.
execute store result score @s origin.light_cd run random value 40..70
scoreboard players operation #titan.light.id origin.fx_id = @s origin.fx_id
execute at @s positioned ~ ~0.6 ~ summon item_display run function zombie:skill/creation/titan/lightning/circle
playsound minecraft:entity.evoker.prepare_summon hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 2
particle minecraft:flash ~ ~0.3 ~ 0 0 0 0.3 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
