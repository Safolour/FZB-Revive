
scoreboard players add @s zombie.electric.aircraft.shoot.skill_timer 1

particle reverse_portal ^ ^ ^ 0 0 0 0 2 force @a[scores={particle=0..1}]
particle reverse_portal ^ ^ ^-0.25 0 0 0 0 2 force @a[scores={particle=0}]
particle reverse_portal ^ ^ ^-0.125 0 0 0 0 2 force @a[scores={particle=0}]
particle reverse_portal ^ ^ ^-0.375 0 0 0 0 2 force @a[scores={particle=0}]
particle reverse_portal ^ ^ ^-0.5 0 0 0 0 2 force @a[scores={particle=0}]
particle reverse_portal ^ ^ ^-0.625 0 0 0 0 2 force @a[scores={particle=0}]
particle reverse_portal ^ ^ ^-0.625 0 0 0 0.1 2 force @a[scores={particle=0}]

execute if score @s zombie.electric.aircraft.shoot.skill_timer matches ..100 run function zombie:skill/electric/aircraft/obviate/missile/tp with entity @s data.position

execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 100 run function zombie:skill/electric/aircraft/obviate/missile/get_position1
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 100.. run function zombie:skill/electric/aircraft/obviate/missile/tp0
execute if entity @a[scores={stat.player=1},distance=..2,gamemode=adventure] run function zombie:skill/electric/aircraft/obviate/missile/damage
execute unless block ~ ~-0.5 ~ #weapon:gun_penetrable run function zombie:skill/electric/aircraft/obviate/missile/damage
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches ..400 run return fail
kill @s