# Generated; spatial endpoint cue, never broadcast at every listener position.
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
playsound minecraft:entity.ender_eye.death hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
kill @s
