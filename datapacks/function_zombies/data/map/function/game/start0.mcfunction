
trigger waitlobby.book_trigger
scoreboard players set @s waitlobby.book_trigger 0
title @s reset
scoreboard players set @s system.room 4
scoreboard players set @s stat.player 1

xp set @s 447010 levels
xp set @s 4022931 points
xp set @s 0 levels
team leave @s
team join game.player @s
scoreboard players set @s interaction.state 1
scoreboard players set @s inventory 1
scoreboard players set @s inventory.lock 1
scoreboard players set @s inventory.armor 0
scoreboard players set @s gold 0

function map:game/tp_back

function weapon:range/gun/allammo
execute if score type map matches 3 run function inventory:inventory/ee_start
execute if score type map matches 4 run function inventory:inventory/lab_start

scoreboard players operation @s health.heal_speed = basic health.heal_speed
effect give @s saturation infinite 0 true
effect give @s resistance infinite 4 true
effect give @s mining_fatigue infinite 2 true

loot replace block 1 -60 1 container.0 loot map:playerhead
data modify storage game root.player.name set from block 1 -60 1 Items[{Slot:0b}].components."minecraft:profile".name
scoreboard players operation uuid uuid = @s uuid
execute store result storage game root.player.uuid int 1 run scoreboard players get uuid uuid
scoreboard players remove uuid uuid 1
execute store result storage game root.player.uuid0 int 1 run scoreboard players get uuid uuid
# 将编号的每一位都编码为格式码，避免两位数编号中的数字显示在计分板上。
scoreboard players set #scoreboard_base uuid 10
scoreboard players operation #scoreboard_id uuid = uuid uuid
function map:game/scoreboard/player_id
# 玩家行按本局加入顺序排列，不使用跨局递增的 uuid 作为排序值。
execute unless score #scoreboard_next game.player matches 0.. store result score #scoreboard_next game.player run data get storage stat root.player_list.game
scoreboard players add #scoreboard_next game.player 1
function map:game/start1 with storage game root.player
data remove storage game root
item replace block 1 -60 1 container.0 with air

function map:game/tellraw
function bs.health:add/health {points:-0.01}
attribute @s burning_time base set 0
