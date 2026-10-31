# 主菜单（录像 PL 主菜单顺序：弹药 / 玻璃框 / 降温 / 幸运箱 / 错过的增益，空行，建议，空行）
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 1
function map:area/lab/monhan/dialog/say_rand {p:"intro",max:45}

function map:area/lab/monhan/dialog/opt {c:3,t:"ammo.0",i:1}
execute unless entity @e[type=interaction,tag=area.lab.showcase.display,limit=1] run function map:area/lab/monhan/dialog/opt {c:3,t:"showcase.0",i:2}
execute if entity @e[type=interaction,tag=area.lab.showcase.display,limit=1] run function map:area/lab/monhan/dialog/opt {c:3,t:"showcase.5",i:3}
# 有队友死亡（stat.player 3）才能买全体复活
execute if entity @a[scores={system.room=4,stat.player=3}] run function map:area/lab/monhan/dialog/opt {c:3,t:"revive.0",i:4}
# 第 21-40 回合：温度（加热 / 净化）
execute if score round game.state matches 21..40 run function map:area/lab/monhan/dialog/opt {c:3,t:"temperature.0",i:5}
# 幸运箱：已计满 4 抽可以花钱定向下一抽；已定向的显示“重置保底”
execute unless score @s monhan.lucky_set matches 1 if score @s monhan.lucky >= lucky.cycle monhan run function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.0",i:6}
execute if score @s monhan.lucky_set matches 1 run function map:area/lab/monhan/dialog/opt {c:3,t:"luckychest.12",i:7}
# 第 41 回合起：售货机不再卖的增益（火焰 / 灰烬 / 中和子弹）
execute if score round game.state matches 41.. run function map:area/lab/monhan/dialog/opt {c:3,t:"perk.0",i:8}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:5,t:"tips.0",i:9}
function map:area/lab/monhan/dialog/gap
