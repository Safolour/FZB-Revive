tag @s add origin.combat_fx
tag @s add origin.laser_fx
tag @s add origin.laser.anchor
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players add #next origin.fx_id 1
scoreboard players operation @s origin.fx_id = #next origin.fx_id
scoreboard players operation #fx origin.fx_id = @s origin.fx_id
scoreboard players set @s origin.fx_age 0
data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b}
tp @s ~ ~ ~ ~ 0
execute positioned ~ ~-1.2 ~ positioned ^ ^ ^-0.8 summon item_display run function zombie:skill/creation/origin/laser/model {layer:1,scale:1.0}
execute positioned ~ ~-1.2 ~ positioned ^ ^ ^-0.8 summon item_display run function zombie:skill/creation/origin/laser/model {layer:2,scale:0.8}
execute positioned ~ ~-1.2 ~ positioned ^ ^ ^-0.8 summon item_display run function zombie:skill/creation/origin/laser/model {layer:3,scale:0.6}
execute positioned ~ ~-1.2 ~ positioned ^ ^ ^-0.8 summon item_display run function zombie:skill/creation/origin/laser/model {layer:4,scale:0.4}
execute positioned ~ ~-1.2 ~ positioned ^ ^ ^-0.8 summon item_display run function zombie:skill/creation/origin/laser/model {layer:5,scale:0.2}
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1},distance=..80]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1},distance=..80]
scoreboard players set #laser.fx_step origin.tool_cfg 0
function zombie:skill/creation/origin/laser/trail
scoreboard players set #laser.step origin.tool_cfg 0
execute at @s run function zombie:skill/creation/origin/laser/ray
