execute if score range weapon.range matches ..1 run return 0
scoreboard players operation range0 weapon.range = range weapon.range
scoreboard players operation range0 weapon.range %= 2 number
execute unless score range0 weapon.range matches 0 run return 0
execute if score range weapon.range matches ..3 run return 0
execute if score @s weapon.gun_color matches 0 run particle dust{color:16711680,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 1 run particle dust{color:16745472,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 2 run particle dust{color:16776960,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 3 run particle dust{color:7601920,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 4 run particle dust{color:65480,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 5 run particle dust{color:30461,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
execute if score @s weapon.gun_color matches 6 run particle dust{color:10027263,scale:1.8} ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
