# 快速恢复（fast_regeneration）：由 inventory_check 持续同步，kit 加载后也会主动调用
# 回血间隔 26 tick → 13 tick（health.heal_speed 25 → 12；录像 2026_10_20_12_56_35 实测，生命恢复效果始终是 I 级）
# 治愈技能冷却 30 → 20 秒：weapon:range/skill/skill/heal/heal
execute if items entity @s container.* *[custom_data~{tag:["fast_regeneration"]}] run return run scoreboard players operation @s health.heal_speed = fast_regeneration health.heal_speed
scoreboard players operation @s health.heal_speed = basic health.heal_speed
