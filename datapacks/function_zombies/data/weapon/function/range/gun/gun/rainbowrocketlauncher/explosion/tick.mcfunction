execute if score @s weapon.rrl_frame matches 0 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_0 with entity @s data
execute if score @s weapon.rrl_frame matches 1 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_1 with entity @s data
execute if score @s weapon.rrl_frame matches 2 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_2 with entity @s data
execute if score @s weapon.rrl_frame matches 3 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_3 with entity @s data
execute if score @s weapon.rrl_frame matches 4 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_4 with entity @s data
execute if score @s weapon.rrl_frame matches 5 run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/frame_5 with entity @s data
scoreboard players add @s weapon.rrl_frame 1
execute if score @s weapon.rrl_frame matches 6.. run kill @s
