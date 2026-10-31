
scoreboard players operation tick zombie.nether.guardian.twilight = @s zombie.nether.guardian.twilight
scoreboard players operation tick zombie.nether.guardian.twilight %= 3 number
execute if score tick zombie.nether.guardian.twilight matches 0 run return fail

particle end_rod ^ ^0.5 ^1 0 0 0 0.05 5 force @a[scores={particle=0}]
particle explosion ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=0}]

summon marker ~ ~ ~ {Tags:["mob.skill","skill.twilightguardian.laser","chosen"]}
tp @n[type=marker,tag=chosen] ^ ^0.5 ^1 ~ ~

scoreboard players set @n[type=marker,tag=chosen] zombie.nether.guardian.twilight 0

execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/loop

kill @n[type=marker,tag=chosen]
