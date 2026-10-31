execute unless score #idx monhan matches 1 run return run function map:area/lab/monhan/page/main/show
execute unless entity @a[scores={system.room=4,stat.player=3}] run return run function map:area/lab/monhan/page/revive/none

function map:area/lab/monhan/page/revive/calc
execute store result score #ok monhan run function map:area/lab/monhan/page/pay
execute unless score #ok monhan matches 1 run return 0

# 倒地的原地拉起，死亡的回出生点（同回合开始复活）
execute as @a[scores={system.room=4,stat.player=2}] at @s run function player_stat:revive/revive_self
execute as @a[scores={system.room=4,stat.player=3}] run function player_stat:revive/revive_self0
execute as @a[scores={system.room=4..}] at @s run playsound entity.player.levelup record @s ~ ~ ~ 1 1
function map:area/lab/monhan/dialog/buy {c:'{translate:"zb.dialog.monhan.text.buy.revive"}'}

function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 32
function map:area/lab/monhan/dialog/say {t:"revive.5"}
function map:area/lab/monhan/dialog/opt {c:3,t:"revive.6",i:1}
function map:area/lab/monhan/dialog/gap
