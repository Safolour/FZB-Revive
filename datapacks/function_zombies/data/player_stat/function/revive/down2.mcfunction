
execute if entity @s[tag=ride] run return fail
tp @s ~ ~ ~
execute align y positioned ~ ~-1 ~ if block ~ ~ ~ #weapon:gun_penetrable run function player_stat:revive/down2
execute if entity @s[tag=ride] run return fail
execute unless block ~ ~-1 ~ lava run function player_stat:revive/down2_0
execute if block ~ ~-1 ~ lava positioned ~ ~-0.125 ~ run function player_stat:revive/down2_0
tag @s add ride