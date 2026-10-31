scoreboard players add @s zombie.nether.lava.particle 1

execute if score @s zombie.nether.lava.particle matches 1 if entity @s[tag=skill.guardian.floor.lava.particle.r0] run particle large_smoke ^ ^2 ^ 0 0 0 0.1 3 force @a[scores={particle=0}]
execute if score @s zombie.nether.lava.particle matches 1 if entity @s[tag=skill.guardian.floor.lava.particle.r1] run particle large_smoke ^ ^3 ^ 0 0 0 0.1 4 force @a[scores={particle=0}]
execute if score @s zombie.nether.lava.particle matches 1 if entity @s[tag=skill.guardian.floor.lava.particle.r2] run particle large_smoke ^ ^4 ^ 0 0 0 0.1 5 force @a[scores={particle=0}]

tp @s ~ ~ ~ ~ ~-4

execute if entity @s[tag=skill.guardian.floor.lava.particle.r0] run particle trial_spawner_detection ^ ^2 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.guardian.floor.lava.particle.r1] run particle trial_spawner_detection ^ ^3 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.guardian.floor.lava.particle.r2] run particle trial_spawner_detection ^ ^4 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.guardian.floor.lava.particle.r0] run particle flame ^ ^2 ^ 0.02 0.02 0.02 0.02 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.guardian.floor.lava.particle.r1] run particle flame ^ ^3 ^ 0.02 0.02 0.02 0.02 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.guardian.floor.lava.particle.r2] run particle flame ^ ^4 ^ 0.02 0.02 0.02 0.02 1 force @a[scores={particle=0}]

execute if score @s zombie.nether.lava.particle matches 45 if entity @s[tag=skill.guardian.floor.lava.particle.r0] run particle lava ^ ^2 ^ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score @s zombie.nether.lava.particle matches 45 if entity @s[tag=skill.guardian.floor.lava.particle.r1] run particle lava ^ ^3 ^ 0 0 0 0 4 force @a[scores={particle=0}]
execute if score @s zombie.nether.lava.particle matches 45 if entity @s[tag=skill.guardian.floor.lava.particle.r2] run particle lava ^ ^4 ^ 0 0 0 0 5 force @a[scores={particle=0}]

execute if score @s zombie.nether.lava.particle matches 45.. run kill @s
