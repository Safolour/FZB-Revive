scoreboard players add @s zombie.lasrgiant 1
execute if score @s zombie.lasrgiant matches ..2 run return fail

scoreboard players set @s zombie.lasrgiant 0
execute on target if entity @s[type=player,scores={stat.player=1},distance=..30] run tag @s add target

execute unless entity @a[tag=target] run return fail

execute rotated as @s anchored eyes positioned ^-0.8 ^-1.5 ^2 run summon marker ~ ~ ~ {Tags:["mob.skill","skill.lasrgiant","chosen"]}
execute rotated as @s anchored eyes positioned ^0.8 ^-1.5 ^2 run summon marker ~ ~ ~ {Tags:["mob.skill","skill.lasrgiant","chosen"]}

execute if entity @s[type=zombie,tag=skill.mutategiant] run tag @e[type=marker,tag=skill.lasrgiant,tag=chosen] add skill.mutategiant

execute as @e[type=marker,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @p[tag=target]
execute as @e[type=marker,tag=chosen] at @s run tp @s ~ ~1.5 ~ ~ ~

tag @e[type=marker,tag=chosen] remove chosen
tag @a remove target
