execute at @n[type=guardian,tag=skill.crimsonguardian.shield] run tp @s ~ ~1 ~ ~ ~

scoreboard players add score zombie.nether.guardian.shieldparticle 1
execute if score score zombie.nether.guardian.shieldparticle matches 15.. run scoreboard players set score zombie.nether.guardian.shieldparticle 1

execute as @a[scores={system.room=4..}] rotated as @s positioned ^ ^ ^-1 rotated ~ ~90 run function zombie:skill/nether/guardian/crimson/0/skill/shield/player

scoreboard players reset tick zombie.nether.guardian.shieldparticle
