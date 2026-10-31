# 扣 #price monhan 金钱；钱不够就显示没钱页面并返回 0
execute if score @s gold < #price monhan run function map:area/lab/monhan/page/nogold
execute if score @s gold < #price monhan run return 0
scoreboard players operation @s gold -= #price monhan
return 1
