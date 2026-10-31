
scoreboard players remove @s[scores={perk.frozen_bullet_time=1..}] perk.frozen_bullet_time 1
scoreboard players remove @s[scores={weapon.gun_snowballcannon_time=1..}] weapon.gun_snowballcannon_time 1
scoreboard players remove @s[scores={weapon.gun_ultimatesnowballcannon_time=1..}] weapon.gun_ultimatesnowballcannon_time 1
scoreboard players remove @s[scores={weapon.gun_eldergun_time=1..}] weapon.gun_eldergun_time 1
scoreboard players remove @s[scores={weapon.gun_ultimateeldergun_time=1..}] weapon.gun_ultimateeldergun_time 1
scoreboard players remove @s[scores={weapon.gun_season_winter_time=1..}] weapon.gun_season_winter_time 1
scoreboard players remove @s[scores={weapon.gun_ultimateseason_winter_time=1..}] weapon.gun_ultimateseason_winter_time 1
scoreboard players remove @s[scores={weapon.gun_parallax_slow=1..}] weapon.gun_parallax_slow 1

function zombie:speed_operation
execute if score @s zombie.speed1 = @s zombie.speed0 run return fail
scoreboard players operation @s zombie.speed1 = @s zombie.speed0
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base float 0.01 run scoreboard players get @s zombie.speed0

execute unless entity @s[scores={path.tp_binding=1..2}] run return fail
scoreboard players operation speed zombie.speed = @s zombie.speed0
execute as @e[type=skeleton,tag=pathfinding] if score @s zombie.uuid = uuid zombie.uuid store result entity @s attributes[{id:"minecraft:movement_speed"}].base float 0.009 run scoreboard players get speed zombie.speed