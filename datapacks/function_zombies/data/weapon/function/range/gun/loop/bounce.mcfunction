execute unless entity @s[tag=bounce] run return fail
# 撞墙/落地前这个方向速度超过 0.05 格/tick 才算一次弹跳（落地滚动时竖直速度每 tick 都是 0，不算）
scoreboard players set #bounced weapon.state 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{x:0}}} unless score @s weapon.gun_motionx0 matches -50000..50000 run scoreboard players set #bounced weapon.state 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{y:0}}} unless score @s weapon.gun_motiony0 matches -50000..50000 run scoreboard players set #bounced weapon.state 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{z:0}}} unless score @s weapon.gun_motionz0 matches -50000..50000 run scoreboard players set #bounced weapon.state 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{x:{max:0.25,min:-0.25},y:{max:0.25,min:-0.25},z:{max:0.25,min:-0.25}},stepping_on:{block:{}}}} if score @s weapon.gun_motiony0 matches -500000..500000 run scoreboard players set @s weapon.range 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{x:0}}} store result entity @s Motion[0] double -0.000001 run scoreboard players get @s weapon.gun_motionx0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{y:0}}} store result entity @s Motion[1] double -0.000001 run scoreboard players get @s weapon.gun_motiony0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{z:0}}} store result entity @s Motion[2] double -0.000001 run scoreboard players get @s weapon.gun_motionz0
# 弹够 weapon.gun_bounce_max 次：寿命归零 → loop/1 里按寿命结束爆炸
execute if score #bounced weapon.state matches 1 if score @s weapon.gun_bounce_max matches 1.. run scoreboard players add @s weapon.gun_bounce 1
execute if score @s weapon.gun_bounce_max matches 1.. if score @s weapon.gun_bounce >= @s weapon.gun_bounce_max run scoreboard players set @s weapon.range 0
execute store result score @s weapon.gun_motionx0 run data get entity @s Motion[0] 1000000
execute store result score @s weapon.gun_motiony0 run data get entity @s Motion[1] 1000000
execute store result score @s weapon.gun_motionz0 run data get entity @s Motion[2] 1000000