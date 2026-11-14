
scoreboard players operation tick zombie.nether.guardian.twilight = @s zombie.nether.guardian.twilight
scoreboard players operation tick zombie.nether.guardian.twilight %= 3 number
execute if score tick zombie.nether.guardian.twilight matches 0 run return fail

execute unless score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.05 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.05 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ^ ^0.5 ^1 0 0 0 0.05 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle end_rod ^ ^0.5 ^1 0 0 0 0.05 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ^ ^0.5 ^1 0 0 0 0 1 force @a[scores={particle=1}]

summon marker ~ ~ ~ {Tags:["mob.skill","skill.twilightguardian.laser","chosen"]}
tp @n[type=marker,tag=chosen] ^ ^0.5 ^1 ~ ~

scoreboard players set @n[type=marker,tag=chosen] zombie.nether.guardian.twilight 0

execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/loop

kill @n[type=marker,tag=chosen]
