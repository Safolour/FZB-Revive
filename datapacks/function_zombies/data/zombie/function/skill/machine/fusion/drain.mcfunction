# 玩家执行：融噬 3 格内每 tick 对金血造成 0.15 伤害（原伤害 ×3）；没有金血时红血仍掉 0.05，红血 2 点以下不再扣
function player_stat:health/absorption/get
execute if score #abs100 health.operation matches 1.. run particle flame ~ ~1.5 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if score #abs100 health.operation matches 1.. run scoreboard players set #sub100 health.operation 15
execute if score #abs100 health.operation matches 1.. run return run function player_stat:health/absorption/sub
execute unless score @s health.health matches 20.. run return fail
particle flame ~ ~1.5 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
function bs.health:add/health {points:-0.05}
