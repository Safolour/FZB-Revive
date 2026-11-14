function map:area/lab/temperature/purify


effect give @e[tag=mob] slowness 5 3 false

function map:powerup/presentation/effect/purification {players:"@a[scores={system.room=4..}]",mobs:"@e[tag=mob]",viewer0:"@a[scores={particle=0}]",viewer1:"@a[scores={particle=1}]"}
