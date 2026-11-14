execute unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.meltdown] run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/end

execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1.5} ^ ^0.3 ^-1 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1.5} ^ ^0.3 ^-1 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1.5} ^ ^0.3 ^-1 0.5 0.5 0.5 0 1 force @a[scores={particle=1}]

scoreboard players add @s zombie.nether.guardian.suspense1 1

scoreboard players set 10 zombie.nether.guardian.suspense1 10
scoreboard players operation mod zombie.nether.guardian.suspense1 = @s zombie.nether.guardian.suspense1
scoreboard players operation mod zombie.nether.guardian.suspense1 %= 10 zombie.nether.guardian.suspense1
scoreboard players reset 10 zombie.nether.guardian.suspense1

scoreboard players set 3 zombie.nether.guardian.suspense1 3
scoreboard players operation mod1 zombie.nether.guardian.suspense1 = @s zombie.nether.guardian.suspense1
scoreboard players operation mod1 zombie.nether.guardian.suspense1 %= 3 zombie.nether.guardian.suspense1
scoreboard players reset 3 zombie.nether.guardian.suspense1

execute if score mod zombie.nether.guardian.suspense1 matches 0 run playsound entity.elder_guardian.ambient record @a ~ ~ ~ 1 2

scoreboard players reset mod zombie.nether.guardian.suspense1

tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,limit=1,sort=nearest] add target

execute if score mod1 zombie.nether.guardian.suspense1 matches 0 if entity @s[tag=skill.crimsonguardian.meltdown.left] unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,distance=..12] rotated ~ 0 run tp @s ^0.05 ^ ^0.2 facing entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,limit=1]
execute if score mod1 zombie.nether.guardian.suspense1 matches 0 if entity @s[tag=skill.crimsonguardian.meltdown.right] unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,distance=..12] rotated ~ 0 run tp @s ^-0.05 ^ ^0.2 facing entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target,limit=1]

scoreboard players reset mod1 zombie.nether.guardian.suspense1

#execute if score @s zombie.nether.guardian.suspense1 matches 10.. unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/motion1
execute if score @s zombie.nether.guardian.suspense1 matches 10.. unless entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear,tag=target] run return run scoreboard players set @s zombie.nether.guardian.suspense1 0

execute if score @s zombie.nether.guardian.suspense1 matches ..10 run return run tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] remove target
execute if entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] unless entity @e[type=marker,tag=target,tag=skill.guardian.floor.platform.marker.clear,distance=..15] run scoreboard players set @s zombie.nether.guardian.suspense1 0
execute if entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] unless entity @e[type=marker,tag=target,tag=skill.guardian.floor.platform.marker.clear,distance=..15] run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/motion
execute if entity @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] unless entity @e[type=marker,tag=target,tag=skill.guardian.floor.platform.marker.clear,distance=..15] run return run tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] remove target

execute if score @s zombie.nether.guardian.suspense1 matches ..50 run return run tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] remove target

execute if entity @e[type=marker,tag=target,tag=skill.guardian.floor.platform.marker.clear,distance=..15] run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/laser

tag @e[type=marker,tag=skill.guardian.floor.platform.marker.clear] remove target
scoreboard players set @s zombie.nether.guardian.suspense1 0
