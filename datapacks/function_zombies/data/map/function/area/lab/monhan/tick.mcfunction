# 全局每 tick（map:area/lab/tick）：Monhan 眨眼、转头、浮动
execute unless entity @e[type=item_display,tag=area.lab.monhan.head,limit=1] run return 0

# 眨眼：随机隔 5~10 秒，0→1→2→1→0 每帧 2 tick（录像 t=13696~13996）
scoreboard players remove #blink monhan 1
execute if score #blink monhan matches 8 as @e[type=item_display,tag=area.lab.monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/1"
execute if score #blink monhan matches 6 as @e[type=item_display,tag=area.lab.monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/2"
execute if score #blink monhan matches 4 as @e[type=item_display,tag=area.lab.monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/1"
execute if score #blink monhan matches 2 as @e[type=item_display,tag=area.lab.monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/0"
execute if score #blink monhan matches ..0 store result score #blink monhan run random value 100..200

# 浮动：每秒上下 0.1 格（录像里盔甲架 ±0.1）；每 4 tick 转向 8 格内最近的玩家
scoreboard players add #bob monhan 1
execute if score #bob monhan matches 40.. run scoreboard players set #bob monhan 0
execute if score #bob monhan matches 0 if score #lab_phase map matches 0 as @e[type=item_display,tag=area.lab.monhan.head] run tp @s 291.5 93.7 170.5
execute if score #bob monhan matches 0 if score #lab_phase map matches 1 as @e[type=item_display,tag=area.lab.monhan.head] run tp @s 339.5 93.7 170.5
execute if score #bob monhan matches 0 if score #lab_phase map matches 0 as @e[type=text_display,tag=area.lab.monhan.name] run tp @s 291.5 94.1 170.5
execute if score #bob monhan matches 0 if score #lab_phase map matches 1 as @e[type=text_display,tag=area.lab.monhan.name] run tp @s 339.5 94.1 170.5
execute if score #bob monhan matches 20 if score #lab_phase map matches 0 as @e[type=item_display,tag=area.lab.monhan.head] run tp @s 291.5 93.8 170.5
execute if score #bob monhan matches 20 if score #lab_phase map matches 1 as @e[type=item_display,tag=area.lab.monhan.head] run tp @s 339.5 93.8 170.5
execute if score #bob monhan matches 20 if score #lab_phase map matches 0 as @e[type=text_display,tag=area.lab.monhan.name] run tp @s 291.5 94.2 170.5
execute if score #bob monhan matches 20 if score #lab_phase map matches 1 as @e[type=text_display,tag=area.lab.monhan.name] run tp @s 339.5 94.2 170.5
scoreboard players operation #turn monhan = #bob monhan
scoreboard players operation #turn monhan %= 4 number
execute if score #turn monhan matches 0 as @e[type=item_display,tag=area.lab.monhan.head] at @s if entity @p[distance=..8,gamemode=!spectator] facing entity @p[distance=..8,gamemode=!spectator] eyes run rotate @s ~ 0
