
execute unless score @s luckychest.state matches 1.. run return fail
# Preserve a roll already running before the context flag was introduced.
execute unless score @s setting.pu matches 0..1 run scoreboard players operation @s setting.pu = shoppingspree luckychest
scoreboard players remove @s[scores={luckychest.timer=0..}] luckychest.timer 1

# Monhan 定向：滚完的最后一刻换成玩家选的物品
execute if entity @s[scores={luckychest.timer=0,luckychest.state=2}] if data entity @s data.forced at @s run function map:area/lab/monhan/lucky/apply
execute if entity @s[scores={luckychest.timer=0,luckychest.state=2}] run function map:luckychest/trigger/timeup with entity @s data.item
execute if entity @s[scores={luckychest.timer=0,luckychest.state=3}] run function map:luckychest/trigger/disappear

execute if entity @s[scores={luckychest.state=2,luckychest.timer=194}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=188}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=182}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=176}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=168}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=160}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=152}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=144}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=134}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=124}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={setting.pu=1,luckychest.state=2,luckychest.timer=125}] run scoreboard players set @s luckychest.timer 1
execute if entity @s[scores={luckychest.state=2,luckychest.timer=114}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=104}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=92}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=80}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=68}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=56}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=42}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=28}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=14}] at @s run function map:luckychest/trigger/random_item
execute if entity @s[scores={luckychest.state=2,luckychest.timer=0}] at @s run function map:luckychest/trigger/random_item

execute if entity @s[scores={luckychest.timer=0..,luckychest.state=3}] run function map:luckychest/time/0
