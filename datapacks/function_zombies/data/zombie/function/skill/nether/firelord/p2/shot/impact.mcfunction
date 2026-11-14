summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~
particle explosion ~ ~ ~ 0 0 0 3 10 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 3 5 force @a[scores={particle=1}]
particle end_rod ~ ~ ~ 0 0 0 0.3 50 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.3 25 force @a[scores={particle=1}]
particle firework ~ ~ ~ 0 0 0 0.3 50 force @a[scores={particle=0}]
particle firework ~ ~ ~ 0 0 0 0.3 25 force @a[scores={particle=1}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 50 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 25 force @a[scores={particle=1}]
particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound item.trident.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1.5
playsound item.trident.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 2
playsound item.trident.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound item.totem.use hostile @a[scores={system.room=4..}] ~ ~ ~ 2 1
playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
playsound block.respawn_anchor.deplete hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
scoreboard players set #shielddamage zombie.health 5000
execute as @e[type=marker,tag=firelord.p2.safe,distance=..10] at @s run function zombie:skill/nether/firelord/p2/safe_hit
execute as @a[gamemode=adventure,scores={stat.player=1},distance=..5] at @s unless entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/p2/shot/hit
execute as @e[tag=mob,tag=!skill.firelord,scores={zombie.health=1..},distance=..5] at @s unless entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/p2/shot/mob_damage
kill @s
