
scoreboard players add @s zombie.creation.calamity 1
particle crit ~ ~0.3 ~ 0 0 0 0 1 force @a[scores={particle=0}]
tp @s ^ ^ ^1
execute if entity @p[scores={stat.player=1},distance=..2] as @p[scores={stat.player=1},distance=..2] at @s run function zombie:skill/creation/calamity/damage
execute if entity @p[scores={stat.player=1},distance=..2] run scoreboard players set @s zombie.creation.calamity 101
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.creation.calamity 101
execute if score @s zombie.creation.calamity matches ..100 run return fail
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle block{block_state:stone} ~ ~ ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
particle item{item:diamond_sword} ~ ~ ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
playsound entity.zombie.attack_iron_door record @a ~ ~ ~ 1 2
execute on passengers if entity @s[type=item_display] run kill @s
execute on passengers if entity @s[type=slime] run function system:death
kill @s
