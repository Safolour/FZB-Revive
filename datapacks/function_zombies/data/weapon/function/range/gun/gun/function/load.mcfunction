scoreboard objectives add weapon.gun_function dummy
scoreboard players set uuid weapon.gun_function 10047
# 数值 = 蓝图全 100% 的数值（lore：伤害 10.0 / 弹药 1000 / 弹夹 99 / 射速 0.25s / 装填 1.50s / 射程 32 / 连发 3 / 霰弹 10 / 偏移 5.0°）
scoreboard players set damage weapon.gun_function 100
scoreboard players set ammo weapon.gun_function 1000
scoreboard players set clip_ammo weapon.gun_function 99
scoreboard players set rate weapon.gun_function 5
scoreboard players set reload weapon.gun_function 30
scoreboard players set range weapon.gun_function 64
scoreboard players set gold weapon.gun_function 10
scoreboard players set gold_crit weapon.gun_function 15
scoreboard players set punch weapon.gun_function 200
scoreboard players set extrashot weapon.gun_function 2
scoreboard players set extrashot_time weapon.gun_function 1
# 每发 3 颗弹（xlsx「一次喷出3发子弹」，录像每次 3 条射线），各自随机偏移 ±5°（lore「子弹偏移：5.0°」，0.01° 为单位）
scoreboard players set spread weapon.gun_function 500
# 毁灭激光：充能容量固定 1000；每把枪的释放阈值保存在物品 custom_data.laser_threshold（初始 1000，每命中一只怪 −2，最低 200）
scoreboard players set laser_damage weapon.gun_function 30000

scoreboard objectives add weapon.gun_function_ammo dummy
scoreboard objectives add weapon.gun_function_clip_ammo dummy
scoreboard objectives add weapon.gun_function_rate dummy
scoreboard objectives add weapon.gun_function_rate0 dummy
scoreboard objectives add weapon.gun_function_reload dummy
scoreboard objectives add weapon.gun_function_slot dummy

scoreboard players set @a weapon.gun_function_ammo 0
function weapon:range/gun/gun/function/laser/load
