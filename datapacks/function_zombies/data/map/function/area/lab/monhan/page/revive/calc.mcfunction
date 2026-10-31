# 全体复活价格 = 1500 + 1000 × 局内人数（用户定：4 人局 5500）
execute store result score #price monhan if entity @a[scores={system.room=4}]
scoreboard players operation #price monhan *= revive.per monhan
scoreboard players operation #price monhan += revive.base monhan
