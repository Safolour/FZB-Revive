
scoreboard players operation @s luckychest.user_uuid = @p[tag=chosen] uuid
scoreboard players set @s luckychest.state 2
scoreboard players operation @s luckychest.timer = roll_time luckychest
scoreboard players set shoppingspree luckychest 0
execute if score timer powerup.timer.shoppingspree matches 0.. run scoreboard players set shoppingspree luckychest 1
execute if entity @p[tag=chosen,scores={system.room=2}] run scoreboard players set shoppingspree luckychest 0
execute if entity @p[tag=chosen,scores={system.room=2}] if score #timer_shoppingspree setting.pu matches 1.. run scoreboard players set shoppingspree luckychest 1
scoreboard players operation @s setting.pu = shoppingspree luckychest
# 保底计数 / Monhan 定向（map:area/lab/monhan/lucky/draw）
function map:area/lab/monhan/lucky/draw
scoreboard players operation @p[tag=chosen] gold -= @s luckychest.price
scoreboard players set sound luckychest.item 0
summon armor_stand ~ ~1.5 ~ {Tags:["luckychest",text,"text2"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{text:""}]}
function map:luckychest/summon/item

execute as @p[tag=chosen] run loot replace block 1 -60 1 container.0 loot map:playerhead
function map:luckychest/trigger/open0 with block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile"
item replace block 1 -60 1 container.0 with air

function map:luckychest/trigger/animation_open