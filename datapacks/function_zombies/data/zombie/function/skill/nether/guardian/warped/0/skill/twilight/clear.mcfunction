scoreboard players operation match zombie.nether.guardian.twilight.match = @s zombie.nether.guardian.twilight.match
execute as @e[type=elder_guardian,tag=skill.twilightguardian] if score @s zombie.nether.guardian.twilight.match = match zombie.nether.guardian.twilight.match run tag @s add target
execute as @n[type=elder_guardian,tag=target] run function system:death
scoreboard players reset match zombie.nether.guardian.twilight.match
kill @s
