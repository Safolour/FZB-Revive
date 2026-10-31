# 枪命中给钱前调用：gold weapon.state 减去 ceil(gold × #cut / 100)，例如 1 人时 10 → 9、暴击 15 → 13
scoreboard players operation #loss perk = gold weapon.state
function map:perk/gold_thrower/loss
scoreboard players operation gold weapon.state -= #loss perk
