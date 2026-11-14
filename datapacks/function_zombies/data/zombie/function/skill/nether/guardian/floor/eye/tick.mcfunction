
tp @s ~ ~ ~ ~5 ~

execute unless score round game.state matches 40 run particle flame ^ ^1.8 ^1 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ^ ^1.8 ^1 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ^ ^1.8 ^1 0 0.2 0 0.02 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul_fire_flame ^1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ^1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle soul_fire_flame ^1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle large_smoke ^-1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ^-1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle large_smoke ^-1 ^1.8 ^ 0 0.2 0 0.02 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle sculk_soul ^ ^1.8 ^-1 0 0.2 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ^ ^1.8 ^-1 0 0.2 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ^ ^1.8 ^-1 0 0.2 0 0 1 force @a[scores={particle=1}]

scoreboard players add cooldown zombie.nether.guardian.eye 1
execute if score cooldown zombie.nether.guardian.eye matches ..20 run return 0

scoreboard players set cooldown zombie.nether.guardian.eye 0

execute as @a[scores={stat.player=1}] store result score @s zombie.nether.guardian.eye run data get entity @s Pos[1]
tag @a[scores={stat.player=1,zombie.nether.guardian.eye=93..,zombie.nether.lava.damage_resettimer=0}] add target

execute if entity @a[tag=target] positioned ~ ~1.8 ~ run function zombie:skill/nether/guardian/floor/eye/laser0
execute if entity @a[tag=target] run function zombie:skill/nether/guardian/floor/eye/laser

tag @a[tag=target] remove target
scoreboard players reset @a[scores={system.room=4..}] zombie.nether.guardian.eye
