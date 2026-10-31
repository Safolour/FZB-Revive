execute if score @s zombie.nether.guardian.suspense.laser matches ..10 run team join zombie.suspenseguardian @s
execute if score @s zombie.nether.guardian.suspense.laser matches ..10 run return 0
scoreboard players set @s zombie.nether.guardian.suspense.laser 0
tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]

playsound entity.guardian.ambient record @a ~ ~ ~ 1.5 1


team join mob @s
execute store result score x zombie.nether.guardian.suspense.motion run data get entity @s Pos[0] 10
execute store result score z zombie.nether.guardian.suspense.motion run data get entity @s Pos[2] 10
summon marker ^ ^ ^10 {Tags:["mob.skill","skill.crimsonguardian.suspense.motion"]}
execute store result score x0 zombie.nether.guardian.suspense.motion run data get entity @n[type=marker,tag=skill.crimsonguardian.suspense.motion] Pos[0] 10
execute store result score z0 zombie.nether.guardian.suspense.motion run data get entity @n[type=marker,tag=skill.crimsonguardian.suspense.motion] Pos[2] 10

scoreboard players operation x0 zombie.nether.guardian.suspense.motion -= x zombie.nether.guardian.suspense.motion
scoreboard players operation z0 zombie.nether.guardian.suspense.motion -= z zombie.nether.guardian.suspense.motion
execute store result storage zombie crimsonguardiansuspensemotion.x float 0.003 run scoreboard players get x0 zombie.nether.guardian.suspense.motion
execute store result storage zombie crimsonguardiansuspensemotion.z float 0.003 run scoreboard players get z0 zombie.nether.guardian.suspense.motion

function zombie:skill/nether/guardian/crimson/0/skill/suspense/motion0 with storage zombie crimsonguardiansuspensemotion

scoreboard players reset x zombie.nether.guardian.suspense.motion
scoreboard players reset z zombie.nether.guardian.suspense.motion
scoreboard players reset x0 zombie.nether.guardian.suspense.motion
scoreboard players reset z0 zombie.nether.guardian.suspense.motion
data remove storage zombie crimsonguardiansuspensemotion
kill @e[type=marker,tag=skill.crimsonguardian.suspense.motion]
