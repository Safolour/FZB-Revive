execute at @n[type=elder_guardian,tag=skill.warpedguardian.shield] run tp @s ~ ~1 ~ ~ ~

scoreboard players add score0 zombie.nether.guardian.shieldparticle 1
execute if score score0 zombie.nether.guardian.shieldparticle matches 15.. run scoreboard players set score0 zombie.nether.guardian.shieldparticle 1

execute as @a[scores={system.room=4..}] rotated as @s positioned ^ ^ ^-1 rotated ~ ~90 run function zombie:skill/nether/guardian/warped/0/skill/shield/player

scoreboard players reset tick zombie.nether.guardian.shieldparticle
