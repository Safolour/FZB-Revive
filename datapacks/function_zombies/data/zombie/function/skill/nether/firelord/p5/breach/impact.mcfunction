# Replay: gate explosion emitter; sounds are delivered at each player's location.
particle explosion_emitter 300.5 93 172.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion_emitter 300.5 93 172.5 0 0 0 0 1 force @a[scores={particle=1}]
execute as @a[scores={system.room=4..}] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound entity.iron_golem.death hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound item.trident.thunder hostile @s ~ ~ ~ 2 0
execute as @a[scores={system.room=4..}] at @s run playsound block.anvil.land hostile @s ~ ~ ~ 2 0
