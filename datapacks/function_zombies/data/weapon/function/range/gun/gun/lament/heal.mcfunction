# 弹夹打空 5 tick 后：每命中 1 发子弹恢复 1.5 点血（原回血量的 1.5 倍）
# 录像：回血时在脚上方 1 格播 heart（count 2、offset 0.3）；命中 0 发的轮不出粒子
execute if entity @s[scores={weapon.gun_lament_hit=1..}] run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
execute if entity @s[scores={weapon.gun_lament_hit=1..}] run function weapon:range/gun/gun/lament/heal_ring
execute store result storage weapon root.lament_heal.hit float 1.5 run scoreboard players get @s weapon.gun_lament_hit
execute if entity @s[scores={weapon.gun_lament_hit=1..}] run function weapon:range/gun/gun/lament/heal0 with storage weapon root.lament_heal
scoreboard players set @s weapon.gun_lament_hit 0
scoreboard players set @s weapon.gun_lament_heal -1
