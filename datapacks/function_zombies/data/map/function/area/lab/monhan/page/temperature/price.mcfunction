# 净化价格按回合（用户给的表 21-25/26-30/31-35/36-39/40，对照录像：r21 500、r27 1000、r28 1000、r30 1500，
# 第 30 回合已经是 1500，所以分界提前一回合：21-24 500 / 25-29 1000 / 30-34 1500 / 35-39 2000 / 40 3000）
scoreboard players set #price monhan 500
execute if score round game.state matches 25.. run scoreboard players set #price monhan 1000
execute if score round game.state matches 30.. run scoreboard players set #price monhan 1500
execute if score round game.state matches 35.. run scoreboard players set #price monhan 2000
execute if score round game.state matches 40.. run scoreboard players set #price monhan 3000
