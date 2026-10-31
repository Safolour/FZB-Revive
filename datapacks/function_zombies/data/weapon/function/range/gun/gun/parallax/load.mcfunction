scoreboard objectives add weapon.gun_parallax dummy
scoreboard objectives add weapon.gun_parallax_ammo dummy
scoreboard objectives add weapon.gun_parallax_clip_ammo dummy
scoreboard objectives add weapon.gun_parallax_rate dummy
scoreboard objectives add weapon.gun_parallax_rate0 dummy
scoreboard objectives add weapon.gun_parallax_reload dummy
scoreboard objectives add weapon.gun_parallax_slot dummy
# Newest held-item evidence: 2026_09_28_20_46_28.mcpr, 4339788 ms. Hit rewards: PL 0.68 gun table.
scoreboard players set uuid weapon.gun_parallax 10055
scoreboard players set damage weapon.gun_parallax 10
scoreboard players set ammo weapon.gun_parallax 1
scoreboard players set clip_ammo weapon.gun_parallax 1
scoreboard players set rate weapon.gun_parallax 2
scoreboard players set reload weapon.gun_parallax 0
scoreboard players set range weapon.gun_parallax 0
scoreboard players set gold weapon.gun_parallax 0
scoreboard players set gold_crit weapon.gun_parallax 0
scoreboard players set punch weapon.gun_parallax 75
scoreboard players set extrashot weapon.gun_parallax 0
scoreboard players set extrashot_time weapon.gun_parallax 5
scoreboard players set pierce weapon.gun_parallax 0
scoreboard objectives add weapon.parallax_mode dummy
scoreboard objectives add weapon.parallax_lease dummy
scoreboard objectives add weapon.parallax_sneak dummy
# 蓝色照到：速度留下 75%（-25%），和其他减速连乘
# 速度结算在光束前面，而且先把计时减 1，所以写成 2 刻才能撑到下一次照射；1 刻会被减没
scoreboard objectives add weapon.gun_parallax_slow dummy
scoreboard players set time weapon.gun_parallax_slow 2
scoreboard players set slow weapon.gun_parallax_slow 75
