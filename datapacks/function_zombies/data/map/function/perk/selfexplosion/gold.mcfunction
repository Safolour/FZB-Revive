# 执行者 = 爆炸的玩家：每炸到一个敌人 +gold 金钱（受双倍/三倍/四倍金钱加成）
scoreboard players operation gold weapon.state = gold perk.selfexplosion
scoreboard players operation gold weapon.state *= #count perk
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold weapon.state *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold weapon.state *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold weapon.state *= 4 number
tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]},{translate:zb.item.perk.selfexplosion.gold}]
scoreboard players operation @s gold += gold weapon.state
