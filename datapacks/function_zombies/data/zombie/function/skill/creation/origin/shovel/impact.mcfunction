playsound minecraft:entity.zombie.attack_iron_door hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 0.7
particle minecraft:explosion ~ ~0.2 ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:item{item:"minecraft:diamond_shovel"} ~ ~0.2 ~ 0 0 0 0.1 20 force @a[scores={system.room=4..,particle=0..1},distance=..80]
function zombie:skill/creation/origin/shovel/fx_finish
