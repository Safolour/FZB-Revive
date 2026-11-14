execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
execute unless score round game.state matches 21..40 run return run function map:area/lab/monhan/page/main/show

function map:area/lab/monhan/page/temperature/price
execute store result score #ok monhan run function map:area/lab/monhan/page/pay
execute unless score #ok monhan matches 1 run return 0
function map:area/lab/monhan/dialog/buy {c:'{translate:"zb.dialog.monhan.text.buy.purification"}'}
# 录像 2026_10_23_17_59_26 08:30：玩家音量类别、实体身上 cloud 粒子
execute as @a[scores={system.room=4..}] at @s run playsound entity.zombie_villager.cure player @s ~ ~ ~ 10 2
execute unless score round game.state matches 40 run execute as @a[scores={system.room=4..}] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @a[scores={system.room=4..}] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @a[scores={system.room=4..}] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 15 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run execute as @e[tag=mob] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @e[tag=mob] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run execute as @e[tag=mob] at @s run particle cloud ~ ~1 ~ 0 0 0 0.1 15 force @a[scores={particle=1}]
function map:area/lab/temperature/purify

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 45
function map:area/lab/monhan/dialog/say {t:"temperature.22"}
function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.23",i:1}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"temperature.24",i:2}
function map:area/lab/monhan/dialog/gap
