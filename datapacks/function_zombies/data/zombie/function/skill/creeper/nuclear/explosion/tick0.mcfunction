scoreboard players add @s zombie.nuclearcreeper.explosion 1

particle explosion_emitter ~ ~1 ~
tp @s ^ ^ ^1

execute unless block ~ ~ ~ #weapon:gun_penetrable run particle explosion_emitter ~ ~1 ~ 0 3 0 0 3
execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:death

execute if entity @a[scores={stat.player=1},distance=..10] as @a[scores={stat.player=1},distance=..10] run effect give @s slowness 5 0 false
execute if entity @a[scores={stat.player=1},distance=..10] as @a[scores={stat.player=1},distance=..10] run effect give @s slowness 4 1 false
execute if entity @a[scores={stat.player=1},distance=..10] as @a[scores={stat.player=1},distance=..10] run effect give @s slowness 3 2 false
execute if entity @a[scores={stat.player=1},distance=..10] as @a[scores={stat.player=1},distance=..10] run effect give @s slowness 2 3 false
execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/creeper/nuclear/explosion/damage
execute if score @s zombie.nuclearcreeper.explosion matches 35 if entity @a[scores={stat.player=1},distance=..100] as @a[scores={stat.player=1},distance=..100] at @s run function zombie:skill/creeper/nuclear/explosion/damage0

execute if score @s zombie.nuclearcreeper.explosion matches 35.. run function zombie:death
