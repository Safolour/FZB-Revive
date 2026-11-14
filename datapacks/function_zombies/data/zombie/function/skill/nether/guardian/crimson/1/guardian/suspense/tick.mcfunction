execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ^ ^0.3 ^-0.5 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ^ ^0.3 ^-0.5 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1,0,0],to_color:[0.5,0.5,0],scale:1.5} ^ ^0.3 ^-0.5 0.5 0.5 0.5 0 1 force @a[scores={particle=1}]

scoreboard players add @s zombie.nether.guardian.suspense1 1

scoreboard players set 10 zombie.nether.guardian.suspense1 10
scoreboard players operation mod zombie.nether.guardian.suspense1 = @s zombie.nether.guardian.suspense1
scoreboard players operation mod zombie.nether.guardian.suspense1 %= 10 zombie.nether.guardian.suspense1
scoreboard players reset 10 zombie.nether.guardian.suspense1

scoreboard players set 3 zombie.nether.guardian.suspense1 3
scoreboard players operation mod1 zombie.nether.guardian.suspense1 = @s zombie.nether.guardian.suspense1
scoreboard players operation mod1 zombie.nether.guardian.suspense1 %= 3 zombie.nether.guardian.suspense1
scoreboard players reset 3 zombie.nether.guardian.suspense1

execute if score mod zombie.nether.guardian.suspense1 matches 0 run playsound block.amethyst_block.step record @a ~ ~ ~ 1 1

scoreboard players reset mod zombie.nether.guardian.suspense1

execute as @a[scores={stat.player=1}] if score @s zombie.nether.guardian.suspense1.height >= height zombie.nether.guardian.suspense1.height run tag @s add target

execute if score mod1 zombie.nether.guardian.suspense1 matches 0 if entity @s[tag=skill.crimsonguardian.suspense.1.left] unless entity @p[tag=target,distance=..12] rotated ~ 0 run tp @s ^0.05 ^ ^0.2 facing entity @p[tag=target]
execute if score mod1 zombie.nether.guardian.suspense1 matches 0 if entity @s[tag=skill.crimsonguardian.suspense.1.right] unless entity @p[tag=target,distance=..12] rotated ~ 0 run tp @s ^-0.05 ^ ^0.2 facing entity @p[tag=target]

scoreboard players reset mod1 zombie.nether.guardian.suspense1

execute if score @s zombie.nether.guardian.suspense1 matches 10.. unless entity @a[tag=target] run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/motion1
execute if score @s zombie.nether.guardian.suspense1 matches 10.. unless entity @a[tag=target] run return run scoreboard players set @s zombie.nether.guardian.suspense1 0

execute if score @s zombie.nether.guardian.suspense1 matches ..10 run return run tag @a[tag=target] remove target
execute if entity @a[tag=target] unless entity @a[tag=target,distance=..15] run scoreboard players set @s zombie.nether.guardian.suspense1 0
execute if entity @a[tag=target] unless entity @a[tag=target,distance=..15] run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/motion
execute if entity @a[tag=target] unless entity @a[tag=target,distance=..15] run return run tag @a[tag=target] remove target

execute if score @s zombie.nether.guardian.suspense1 matches ..40 run return run tag @a[tag=target] remove target

execute if entity @a[tag=target,distance=..15] run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/laser

tag @a[tag=target] remove target
scoreboard players set @s zombie.nether.guardian.suspense1 0
