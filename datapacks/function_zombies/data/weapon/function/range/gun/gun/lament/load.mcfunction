scoreboard objectives add weapon.gun_lament dummy
scoreboard players set uuid weapon.gun_lament 10049
scoreboard players set damage weapon.gun_lament 30
scoreboard players set ammo weapon.gun_lament 120
scoreboard players set clip_ammo weapon.gun_lament 6
scoreboard players set rate weapon.gun_lament 30
scoreboard players set reload weapon.gun_lament 30
# 射程 = 弹丸能走几个 0.5 格（lore「射程 24」→ 48）
scoreboard players set range weapon.gun_lament 48
scoreboard players set gold weapon.gun_lament 8
scoreboard players set gold_crit weapon.gun_lament 10
scoreboard players set punch weapon.gun_lament 100
# 一次射击打整轮：第一发之后再连打 extrashot 发，间隔 extrashot_time tick（录像 5 tick）
scoreboard players set extrashot weapon.gun_lament 5
scoreboard players set extrashot_time weapon.gun_lament 5

scoreboard objectives add weapon.gun_lament_ammo dummy
scoreboard objectives add weapon.gun_lament_clip_ammo dummy
scoreboard objectives add weapon.gun_lament_rate dummy
scoreboard objectives add weapon.gun_lament_rate0 dummy
scoreboard objectives add weapon.gun_lament_reload dummy
scoreboard objectives add weapon.gun_lament_slot dummy
# 本轮命中的子弹数（换弹时按它回血）/ 回血结算倒计时
scoreboard objectives add weapon.gun_lament_hit dummy
scoreboard objectives add weapon.gun_lament_heal dummy

scoreboard players set @a weapon.gun_lament_ammo 0
scoreboard players set @a weapon.gun_lament_heal -1
