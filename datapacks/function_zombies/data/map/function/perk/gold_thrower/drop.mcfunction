# 枪击杀敌人、zombie:death 之前调用（执行者 = 被击杀的敌人，射手 = @p[scores={weapon.use=1..}]）
# 三倍与四倍合计固定 1%；成功后按持有武器决定类型。
# 掉出来的加成在地上只留 10 秒，拾取后的效果时长照常。
execute if entity @s[tag=powerup] run return fail
execute store result score #roll perk run random value 1..100
execute unless score #roll perk matches 1 run return fail
tag @s add powerup
tag @s add powerup.short
execute if items entity @p[scores={weapon.use=1..}] weapon *[custom_data~{tag:["golden"]}] run return run tag @s add powerup.quadruplegold
tag @s add powerup.triplegold
