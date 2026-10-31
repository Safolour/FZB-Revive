
scoreboard players add @s zombie.lamda.sprint 1

execute positioned ^ ^ ^1 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
execute positioned ^ ^ ^2 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
execute positioned ^ ^ ^3 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
execute positioned ^ ^ ^4 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
execute positioned ^ ^ ^5 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
execute positioned ^ ^ ^6 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
#execute positioned ^ ^ ^7 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100
#execute positioned ^ ^ ^8 unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.lamda.skill_timer 100

execute if entity @a[scores={stat.player=1},gamemode=adventure,distance=..3] run scoreboard players set @s zombie.lamda.skill_timer 100

execute if score @s zombie.lamda.skill_timer matches ..99 at @s run tp @s ^ ^ ^3 ~ 0

particle instant_effect ^ ^1.5 ^ 1 1 1 1 20 force @a[scores={particle=0}]
particle instant_effect ^ ^1.5 ^1.5 1 1 1 1 20 force @a[scores={particle=0}]

playsound entity.wind_charge.wind_burst record @a ~ ~ ~ 2 0
playsound item.trident.throw record @a ~ ~ ~ 2 1
