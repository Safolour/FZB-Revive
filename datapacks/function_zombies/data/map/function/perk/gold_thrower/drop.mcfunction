# 枪击杀敌人、zombie:death 之前调用（执行者 = 被击杀的敌人，射手 = @p[scores={weapon.use=1..}]）
# 概率（万分之）= drop_base + 命中率% × drop_per_accuracy / 10：命中率 0% 时 0.2%，100% 时 1.0%
# 掉出来的加成带 powerup.short：在地上只留 10 秒（short powerup.timer），捡起来效果时长照常
# 加上 powerup 标签后由 zombie:death → map:powerup/summon/powerup 在原地生成
execute if entity @s[tag=powerup] run return fail
# weapon.gun_accuracy 平时只在一局结束时结算，这里先按当前的命中/开枪数算一次
execute as @p[scores={weapon.use=1..}] run function weapon:range/gun/operation
scoreboard players operation #chance perk = @p[scores={weapon.use=1..}] weapon.gun_accuracy
scoreboard players operation #chance perk *= drop_per_accuracy perk.gold_thrower
scoreboard players operation #chance perk /= 10 number
scoreboard players operation #chance perk += drop_base perk.gold_thrower
execute store result score #roll perk run random value 1..10000
execute if score #roll perk > #chance perk run return fail
tag @s add powerup
tag @s add powerup.short
execute if items entity @p[scores={weapon.use=1..}] weapon *[custom_data~{tag:["golden"]}] run return run tag @s add powerup.quadruplegold
tag @s add powerup.triplegold
