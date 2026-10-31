scoreboard objectives add health.heal_speed dummy
scoreboard objectives add health.regeneration_timer dummy
scoreboard objectives add health.invincible dummy
scoreboard objectives add health.invincible_timer dummy
# 金血每 20 tick 掉 1 点（health/absorption）
scoreboard objectives add health.absorption dummy
 scoreboard players set #20 health.absorption 20
# 受伤扣金血的夹值修饰符是哪个 gametime 加的（health/absorption/sub）
scoreboard objectives add health.absorption_damage dummy

scoreboard players set basic health.heal_speed 25
# 快速恢复增益：每 13 tick 回 1 点（录像实测）
scoreboard players set fast_regeneration health.heal_speed 12
scoreboard players set basic health.invincible 8
scoreboard objectives add health.absorption_add dummy
