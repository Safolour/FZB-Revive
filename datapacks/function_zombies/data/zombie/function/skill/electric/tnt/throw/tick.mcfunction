execute on target if entity @s[scores={stat.player=1},distance=..10] run tag @s add target
execute if entity @a[tag=target] run effect give @s slowness 1 255 true
tag @a remove target

tag @s add target
execute on target if entity @s[scores={stat.player=1},distance=..9] run scoreboard players add @n[type=zombie,tag=target] zombie.electric.bomber.throw.skill_timer 1
execute on target if entity @s[scores={stat.player=1},distance=..6] run scoreboard players add @n[type=zombie,tag=target] zombie.electric.bomber.throw.skill_timer 1
execute on target if entity @s[scores={stat.player=1},distance=..3] run scoreboard players add @n[type=zombie,tag=target] zombie.electric.bomber.throw.skill_timer 1
execute on target if entity @s[scores={stat.player=1},distance=..12] run scoreboard players add @n[type=zombie,tag=target] zombie.electric.bomber.throw.skill_timer 1
execute if score @s zombie.electric.bomber.throw.skill_timer matches 80.. run function zombie:skill/electric/tnt/throw/init
execute if score @s zombie.electric.bomber.throw.skill_timer matches 80.. run scoreboard players set @s zombie.electric.bomber.throw.skill_timer 0
tag @s remove target
