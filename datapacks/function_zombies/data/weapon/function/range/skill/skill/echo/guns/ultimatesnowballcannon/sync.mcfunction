scoreboard players operation clip_ammo weapon.gun_echo = clip_ammo weapon.gun_ultimatesnowballcannon
scoreboard players operation rate weapon.gun_echo = rate weapon.gun_ultimatesnowballcannon
scoreboard players operation reload weapon.gun_echo = reload weapon.gun_ultimatesnowballcannon
scoreboard players operation @s weapon.gun_echo_ammo = @s weapon.gun_ultimatesnowballcannon_ammo
scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatesnowballcannon
execute if score @s weapon.gun_ultimatesnowballcannon_rate0 = @s weapon.gun_ultimatesnowballcannon_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = @s weapon.gun_ultimatesnowballcannon_rate0
