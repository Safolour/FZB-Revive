# Each projectile rolls independently; offsets are yaw-only, so the angular error is at most 1.5 degrees.
execute store result score #fl.fire.roll fl.shots run random value 1..100
execute if score #fl.fire.roll fl.shots matches 1..5 run return run function zombie:skill/nether/firelord/fire/aim_random
execute if entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..}] facing entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},sort=random,limit=1] eyes run function zombie:skill/nether/firelord/fire/aim_target
