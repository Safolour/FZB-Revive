execute at @s run particle dripping_lava ^ ^ ^0.0 0 0 0 0 1 force @a[scores={particle=0..1}]
execute at @s run particle dripping_lava ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]

execute at @s run tp @s ^ ^ ^0.5
scoreboard players add @s zombie.nether.crimson.crimsonguardianzombie.particle 1

execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 1 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/0
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 2 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/1
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 3 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/2
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 4 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/3
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 5 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/4
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 6 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/5
execute if score @s zombie.nether.crimson.crimsonguardianzombie.particle matches 7 at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/particle/6
