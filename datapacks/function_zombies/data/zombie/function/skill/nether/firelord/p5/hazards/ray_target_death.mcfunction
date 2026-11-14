# Stop the associated emitter and remove only its model parts.
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:marker,tag=p5.raysource,distance=..1]
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item_display,tag=p5.raypart0,distance=..1]
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item_display,tag=p5.raypart1,distance=..1]
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item_display,tag=p5.raypart2,distance=..1]
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item_display,tag=p5.raypart3,distance=..1]
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
particle minecraft:dust_color_transition{from_color:16711680,to_color:6553600,scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 0 20 force
particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~0.5 ~ 0 0 0 0 20 force
particle minecraft:block{block_state:"minecraft:black_concrete"} ~ ~0.5 ~ 0 0 0 0 20 force
particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1 force
kill @s
