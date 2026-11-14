# 恢复缺失的组件；介绍交互。
execute positioned 17.5 -59 832.5 if entity @a[distance=..20] unless entity @e[type=interaction,tag=fzb.intro_monhan.hit,distance=..3] run function mainlobby:intro_monhan/respawn
execute positioned 17.5 -59 832.5 if entity @a[distance=..20] unless entity @e[type=armor_stand,tag=fzb.intro_monhan.head_carrier,distance=..3] run function mainlobby:intro_monhan/respawn
execute as @e[type=interaction,tag=fzb.intro_monhan.hit] if data entity @s interaction run function mainlobby:intro_monhan/interact
execute unless entity @e[type=armor_stand,tag=fzb.intro_monhan.head_carrier,limit=1] run return 0
# 录像中眨眼帧：0 -> 1 -> 2 -> 1 -> 0，每帧约两刻。
scoreboard players remove #intro_blink monhan 1
execute if score #intro_blink monhan matches 8 as @e[type=item_display,tag=fzb.intro_monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/1"
execute if score #intro_blink monhan matches 6 as @e[type=item_display,tag=fzb.intro_monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/2"
execute if score #intro_blink monhan matches 4 as @e[type=item_display,tag=fzb.intro_monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/1"
execute if score #intro_blink monhan matches 2 as @e[type=item_display,tag=fzb.intro_monhan.head] run data modify entity @s item.components."minecraft:item_model" set value "custom:monhan/0"
execute if score #intro_blink monhan matches ..0 store result score #intro_blink monhan run random value 100..200
# 双载体一起上下移动，按录像的 0.1 格步长和约三刻的间隔。
scoreboard players add #intro_bob monhan 1
execute if score #intro_bob monhan matches 45.. run scoreboard players set #intro_bob monhan 0
execute if score #intro_bob monhan matches 3 run function mainlobby:intro_monhan/up
execute if score #intro_bob monhan matches 6 run function mainlobby:intro_monhan/up
execute if score #intro_bob monhan matches 9 run function mainlobby:intro_monhan/up
execute if score #intro_bob monhan matches 12 run function mainlobby:intro_monhan/up
execute if score #intro_bob monhan matches 15 run function mainlobby:intro_monhan/up
execute if score #intro_bob monhan matches 24 run function mainlobby:intro_monhan/down
execute if score #intro_bob monhan matches 27 run function mainlobby:intro_monhan/down
execute if score #intro_bob monhan matches 30 run function mainlobby:intro_monhan/down
execute if score #intro_bob monhan matches 33 run function mainlobby:intro_monhan/down
execute if score #intro_bob monhan matches 36 run function mainlobby:intro_monhan/down
# 模型朝向附近玩家；缩小的骷髅保留原版注视行为。
scoreboard players operation #intro_turn monhan = #intro_bob monhan
scoreboard players operation #intro_turn monhan %= 4 number
execute if score #intro_turn monhan matches 0 as @e[type=item_display,tag=fzb.intro_monhan.head] at @s if entity @p[distance=..8,gamemode=!spectator] facing entity @p[distance=..8,gamemode=!spectator] eyes run rotate @s ~ 0
