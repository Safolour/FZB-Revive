# 弹夹打空 5 tick 后：本轮命中几发子弹就回几点血（录像：0~11 点，3~5 点最多）
# 录像：回血时在脚上方 1 格播 heart（count 2、offset 0.3）；命中 0 发的轮不出粒子
execute if entity @s[scores={weapon.gun_lament_hit=1..}] run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a[scores={particle=0..1}]
execute store result storage weapon root.lament_heal.hit int 1 run scoreboard players get @s weapon.gun_lament_hit
execute if entity @s[scores={weapon.gun_lament_hit=1..}] run function weapon:range/gun/gun/lament/heal0 with storage weapon root.lament_heal
scoreboard players set @s weapon.gun_lament_hit 0
scoreboard players set @s weapon.gun_lament_heal -1
