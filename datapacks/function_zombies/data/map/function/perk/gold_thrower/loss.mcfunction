# #loss perk = ceil(#loss × #cut / 100)：金钱被减少的部分（10 → 1，15 → 2，45 → 5）
scoreboard players operation #loss perk *= #cut perk.gold_thrower
scoreboard players add #loss perk 99
scoreboard players operation #loss perk /= 100 number
