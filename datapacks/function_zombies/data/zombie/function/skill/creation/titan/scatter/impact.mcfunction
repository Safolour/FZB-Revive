particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0 3 force @a[scores={system.room=4..,particle=0}]
execute positioned ^ ^ ^-0.5 run particle minecraft:falling_lava ~ ~ ~ 0.25 0.25 0.25 0 10 force @a[scores={system.room=4..,particle=0}]
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..},distance=..48] ~ ~ ~ 1.5 1.5
