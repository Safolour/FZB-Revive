scoreboard players add @s zombie.nuclearbomb 1
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
tp @s ^ ^ ^2.5
execute if entity @a[scores={system.room=4..,title.color.enable=0},distance=..5] as @a[scores={system.room=4..,title.color.enable=0},distance=..5] run function zombie:skill/creeper/nuclearbomb/impact/title
execute if entity @a[scores={stat.player=1..2,zombie.nuclearbomb=0},distance=..5] as @a[scores={stat.player=1..2,zombie.nuclearbomb=0},distance=..5] run function zombie:skill/creeper/nuclearbomb/impact/damage
execute unless block ~ ~ ~ #weapon:gun_penetrable run kill @s
execute if score @s zombie.nuclearbomb matches 20.. run kill @s
