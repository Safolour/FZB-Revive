
scoreboard players add @s zombie.lamda.skill_timer 1

#execute if score @s zombie.lamda.skill_timer matches 1..4 unless entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run tp @s ^ ^ ^0.5 ~ ~-8
#execute if score @s zombie.lamda.skill_timer matches 5..9 unless entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run tp @s ^ ^ ^0.5 ~ ~-4
#execute if score @s zombie.lamda.skill_timer matches 10..12 unless entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run tp @s ^ ^ ^0.5
#execute if score @s zombie.lamda.skill_timer matches 1..12 if entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] run function zombie:skill/machine/lamda/skill/shoot/bullet/tp with entity @s data.position
execute if score @s zombie.lamda.skill_timer matches 1..20 run function zombie:skill/machine/lamda/skill/shoot/bullet/tp with entity @s data.position
execute if score @s zombie.lamda.skill_timer matches 21.. run tp @s ^ ^ ^0.7


#particle firework ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
#particle firework ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=0}]
#particle firework ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
#particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
#particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..2,gamemode=adventure] run scoreboard players set @s zombie.lamda.skill_timer 447
execute as @a[scores={stat.player=1},distance=..2,gamemode=adventure] run function zombie:skill/machine/lamda/skill/shoot/bullet/damage
execute unless block ^ ^ ^0.75 #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 447

execute if score @s zombie.lamda.skill_timer matches ..200 run return fail
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 1

execute unless score @s zombie.lamda.skill_timer matches ..200 positioned ^ ^ ^-0.75 if entity @a[scores={stat.player=1},distance=..2.5] run function zombie:skill/machine/lamda/skill/shoot/bullet/damage
kill @s