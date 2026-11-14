tag @s add origin.combat_fx
tag @s add origin.pickaxe_fx
tag @s add origin.pickaxe.hitmark
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players operation @s origin.fx_id = #fx origin.fx_id
scoreboard players operation @s origin.target = #target origin.target
tag @s add origin.pickaxe.impact_sound
scoreboard players set @s origin.stage 4
scoreboard players operation @s origin.fx_age = #pickaxe.hit_cd origin.tool_cfg
