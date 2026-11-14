# Generated; 09/30 endpoints, with spatial sound rather than listener-local broadcast.
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.2 3 force @a[scores={system.room=4..,particle=0}]
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.2 3 force @a[scores={system.room=4..,particle=0}]
playsound minecraft:block.creaking_heart.break hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
playsound minecraft:entity.ender_eye.death hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
kill @s
