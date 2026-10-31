scoreboard players add @s zombie.electric.aircraft.shoot.skill_timer 1

tp @s ^ ^ ^0.2
particle firework ^ ^ ^-0.3 0 0 0 0.05 1 force @a[scores={particle=0}]
function zombie:skill/electric/aircraft/disperse/missile/particle/tick

execute if entity @a[scores={stat.player=1},distance=..2,gamemode=adventure] run function zombie:skill/electric/aircraft/disperse/missile/explosion
execute unless block ~ ~-0.5 ~ #weapon:gun_penetrable run function zombie:skill/electric/aircraft/disperse/missile/explosion

execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 400 run kill @s
