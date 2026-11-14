scoreboard objectives add weapon.gun_ultimateashesflamethrower dummy
scoreboard players set uuid weapon.gun_ultimateashesflamethrower 10046
scoreboard players set damage weapon.gun_ultimateashesflamethrower 10
scoreboard players set ammo weapon.gun_ultimateashesflamethrower 1000
scoreboard players set clip_ammo weapon.gun_ultimateashesflamethrower 36
scoreboard players set rate weapon.gun_ultimateashesflamethrower 4
scoreboard players set reload weapon.gun_ultimateashesflamethrower 60
# 射程 = 弹丸能走几个 0.5 格（每走一步减 1）
scoreboard players set range weapon.gun_ultimateashesflamethrower 15
scoreboard players set gold weapon.gun_ultimateashesflamethrower -1
scoreboard players set gold_crit weapon.gun_ultimateashesflamethrower -3
scoreboard players set punch weapon.gun_ultimateashesflamethrower 50
# 弹丸每 tick 走几个 0.5 格
scoreboard players set speed weapon.gun_ultimateashesflamethrower 2
# 每发弹丸能穿过几个敌人（lore「穿透：2」）
scoreboard players set pierce weapon.gun_ultimateashesflamethrower 2

scoreboard objectives add weapon.gun_ultimateashesflamethrower_ammo dummy
scoreboard objectives add weapon.gun_ultimateashesflamethrower_clip_ammo dummy
scoreboard objectives add weapon.gun_ultimateashesflamethrower_rate dummy
scoreboard objectives add weapon.gun_ultimateashesflamethrower_rate0 dummy
scoreboard objectives add weapon.gun_ultimateashesflamethrower_reload dummy
scoreboard objectives add weapon.gun_ultimateashesflamethrower_slot dummy

scoreboard players set @a weapon.gun_ultimateashesflamethrower_ammo 0
function weapon:range/gun/gun/ashesflamethrower/proj/load
