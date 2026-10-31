scoreboard players operation clip_ammo weapon.gun_echo = clip_ammo weapon.gun_ultimaterainbowrocketlauncher
scoreboard players operation rate weapon.gun_echo = rate weapon.gun_ultimaterainbowrocketlauncher
scoreboard players operation reload weapon.gun_echo = reload weapon.gun_ultimaterainbowrocketlauncher
scoreboard players operation @s weapon.gun_echo_ammo = @s weapon.gun_ultimaterainbowrocketlauncher_ammo
scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimaterainbowrocketlauncher
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_rate0 = @s weapon.gun_ultimaterainbowrocketlauncher_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = @s weapon.gun_ultimaterainbowrocketlauncher_rate0
