scoreboard players add @s zombie.electric.researcher.slowness 1

execute if entity @a[scores={stat.player=1},distance=..3] run effect give @s slowness 1 255 true

execute if score @s zombie.electric.researcher.slowness matches 20 run scoreboard players set @s zombie.electric.researcher.slowness 0
