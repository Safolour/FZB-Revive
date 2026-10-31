
scoreboard players operation speed zombie.speed = @s zombie.speed
execute if entity @s[tag=cantslow] run return run scoreboard players operation @s zombie.speed0 = speed zombie.speed
execute if entity @s[scores={perk.frozen_bullet_time=1..}] run scoreboard players operation speed zombie.speed *= slow perk.frozen_bullet
execute if entity @s[scores={perk.frozen_bullet_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_snowballcannon_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_snowballcannon_time
execute if entity @s[scores={weapon.gun_snowballcannon_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_ultimatesnowballcannon_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_ultimatesnowballcannon_time
execute if entity @s[scores={weapon.gun_ultimatesnowballcannon_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_eldergun_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_eldergun_time
execute if entity @s[scores={weapon.gun_eldergun_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_ultimateeldergun_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_ultimateeldergun_time
execute if entity @s[scores={weapon.gun_ultimateeldergun_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_parallax_slow=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_parallax_slow
execute if entity @s[scores={weapon.gun_parallax_slow=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_season_winter_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_season_winter_time
execute if entity @s[scores={weapon.gun_season_winter_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

execute if entity @s[scores={weapon.gun_ultimateseason_winter_time=1..}] run scoreboard players operation speed zombie.speed *= slow weapon.gun_ultimateseason_winter_time
execute if entity @s[scores={weapon.gun_ultimateseason_winter_time=1..}] run scoreboard players operation speed zombie.speed /= 100 number

scoreboard players operation @s zombie.speed0 = speed zombie.speed