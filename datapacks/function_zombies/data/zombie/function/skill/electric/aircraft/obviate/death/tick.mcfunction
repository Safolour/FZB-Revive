scoreboard players add @s zombie.electric.aircraft.death 1
execute if score @s zombie.electric.aircraft.death matches 1 run function zombie:skill/electric/aircraft/obviate/death/init
execute if score @s zombie.electric.aircraft.death matches 1 run function zombie:skill/electric/aircraft/obviate/death/0

particle firework ~ ~1 ~ 0 0 0 0.03 1 force @a[scores={particle=0}]
particle large_smoke ~ ~1 ~ 0 0 0 0.03 1 force @a[scores={particle=0}]

execute if entity @s[tag=skill.disperse] run particle campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.03 1 force @a[scores={particle=0}]

execute if entity @s[tag=skill.obviate] unless block ~ ~-0.5 ~ #weapon:gun_penetrable run function zombie:skill/electric/aircraft/obviate/death/explosion
execute if entity @s[tag=skill.disperse] unless block ~ ~-0.5 ~ #weapon:gun_penetrable run function zombie:skill/electric/aircraft/disperse/death/explosion

execute if score @s zombie.electric.aircraft.death matches 200.. run function system:death
