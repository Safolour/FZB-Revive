execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show

# 弹药满载：所有人补满子弹（同加成）
scoreboard players operation #price monhan = ammo.price monhan
execute store result score #ok monhan run function map:area/lab/monhan/page/pay
execute unless score #ok monhan matches 1 run return 0
execute as @a[scores={system.room=4..}] run function weapon:allammo
execute as @a[scores={system.room=4..}] at @s run playsound entity.wolf.shake record @s ~ ~ ~ 10 1
function map:area/lab/monhan/dialog/buy {c:'{translate:"zb.dialog.monhan.text.buy.ammo"}'}

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 11
function map:area/lab/monhan/dialog/say {t:"ammo.3"}
function map:area/lab/monhan/dialog/opt {c:1,t:"ammo.4",i:1}
function map:area/lab/monhan/dialog/gap
