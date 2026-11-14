scoreboard objectives add weapon.gun_ashesflamethrower dummy
scoreboard players set uuid weapon.gun_ashesflamethrower 10045
scoreboard players set damage weapon.gun_ashesflamethrower 10
scoreboard players set ammo weapon.gun_ashesflamethrower 1000
scoreboard players set clip_ammo weapon.gun_ashesflamethrower 28
scoreboard players set rate weapon.gun_ashesflamethrower 5
scoreboard players set reload weapon.gun_ashesflamethrower 80
# 射程 = 弹丸能走几个 0.5 格（每走一步减 1）
scoreboard players set range weapon.gun_ashesflamethrower 12
scoreboard players set gold weapon.gun_ashesflamethrower -1
scoreboard players set gold_crit weapon.gun_ashesflamethrower -3
scoreboard players set punch weapon.gun_ashesflamethrower 50
# 弹丸每 tick 走几个 0.5 格
scoreboard players set speed weapon.gun_ashesflamethrower 1
# 每发弹丸能穿过几个敌人（lore「穿透：2」）
scoreboard players set pierce weapon.gun_ashesflamethrower 2

scoreboard objectives add weapon.gun_ashesflamethrower_ammo dummy
scoreboard objectives add weapon.gun_ashesflamethrower_clip_ammo dummy
scoreboard objectives add weapon.gun_ashesflamethrower_rate dummy
scoreboard objectives add weapon.gun_ashesflamethrower_rate0 dummy
scoreboard objectives add weapon.gun_ashesflamethrower_reload dummy
scoreboard objectives add weapon.gun_ashesflamethrower_slot dummy

scoreboard players set @a weapon.gun_ashesflamethrower_ammo 0
function weapon:range/gun/gun/ashesflamethrower/proj/load
