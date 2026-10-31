# 加伤害吸收后的下一 tick 去掉夹值修饰符（absorb/add）；这个 tick 函数所有玩家每 tick 都跑
execute if score @s weapon.ashes_clamp = @s weapon.ashes_clamp run function weapon:range/gun/gun/ashesflamethrower/absorb/restore
function weapon:range/gun/gun/ashesflamethrower/absorb/refill

scoreboard players remove @s[scores={weapon.gun_ashesflamethrower_rate=0..}] weapon.gun_ashesflamethrower_rate 1
scoreboard players remove @s[scores={weapon.gun_ashesflamethrower_reload=0..}] weapon.gun_ashesflamethrower_reload 1

execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ashesflamethrower"}
execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=0}] run function weapon:range/gun/gun/ashesflamethrower/refill

execute unless items entity @s weapon *[custom_data~{tag:["ashesflamethrower"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ashesflamethrower run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ashesflamethrower

execute if entity @s[scores={weapon.gun_ashesflamethrower_rate=0..,weapon.gun_ashesflamethrower_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ashesflamethrower"}
execute if entity @s[scores={weapon.gun_ashesflamethrower_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ashesflamethrower"}

execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ashesflamethrower/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ashesflamethrower/leftclick

scoreboard players operation @s[scores={weapon.gun_ashesflamethrower_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=0}] run return run function weapon:range/gun/message/outofammo

function weapon:range/gun/gun/ashesflamethrower/absorb/actionbar

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ashesflamethrower run return fail
execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=-1}] run function weapon:range/gun/slot/count {gun:"ashesflamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"ashesflamethrower"}
