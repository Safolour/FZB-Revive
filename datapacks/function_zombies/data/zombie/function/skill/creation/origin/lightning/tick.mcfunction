scoreboard players add @s origin.cast 1
scoreboard players operation #owner origin.owner = @s origin.owner
# Charge geometry is cosmetic. Keep both strike schedules and hit radii unchanged.
execute if score @s origin.big matches 0 if score @s origin.cast matches 2..51 run function zombie:skill/creation/origin/lightning/charge
execute if score @s origin.big matches 1 if score @s origin.cast matches 2..101 positioned 300.5 92.0625 150.5 run function zombie:skill/creation/origin/lightning/large_charge
execute if score @s origin.big matches 0 if score @s origin.cast matches 51 as @e[type=item_display,tag=origin.light.circle] if score @s origin.owner = #owner origin.owner run kill @s
execute if score @s origin.big matches 1 if score @s origin.cast matches 101 as @e[type=item_display,tag=origin.light.circle] if score @s origin.owner = #owner origin.owner run kill @s
execute if score @s origin.big matches 0 if score @s origin.cast matches 61 run data merge entity @s {NoAI:0b}
execute if score @s origin.big matches 1 at @s run tp @s 300.5 ~ 150.5
execute if score @s origin.big matches 0 if score @s origin.cast matches 56 run function zombie:skill/creation/origin/lightning/wave
execute if score @s origin.big matches 0 if score @s origin.cast matches 66 run function zombie:skill/creation/origin/lightning/wave
execute if score @s origin.big matches 1 if score @s origin.cast matches 111 positioned 300.5 92.0625 150.5 run function zombie:skill/creation/origin/lightning/large_wave
execute if score @s origin.big matches 1 if score @s origin.cast matches 121 positioned 300.5 92.0625 150.5 run function zombie:skill/creation/origin/lightning/large_wave
execute if score @s origin.big matches 0 if score @s origin.cast matches 70.. run function zombie:skill/creation/origin/lightning/finish
execute if score @s origin.big matches 1 if score @s origin.cast matches 131.. run function zombie:skill/creation/origin/lightning/finish
