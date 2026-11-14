summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt","titan.lightning.bolt"]}
summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt","titan.lightning.bolt"]}
summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt","titan.lightning.bolt"]}
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
particle minecraft:end_rod ~ ~0.3 ~ 0 0 0 0.3 10 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:flash ~ ~0.3 ~ 0 0 0 0.3 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:flame ~ ~0.3 ~ 0 0 0 0.3 10 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:lava ~ ~0.3 ~ 0 0 0 0.3 10 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:explosion ~ ~0.3 ~ 0 0 0 5 5 force @a[scores={system.room=4..,particle=0..1},distance=..80]
function zombie:skill/creation/titan/lightning/ring
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..3] at @s run function zombie:skill/creation/titan/lightning/hit
scoreboard players operation #titan.light.id origin.fx_id = @s origin.fx_id
execute as @e[type=item_display,tag=titan.lightning.circle] if score @s origin.fx_id = #titan.light.id origin.fx_id run kill @s
kill @s
