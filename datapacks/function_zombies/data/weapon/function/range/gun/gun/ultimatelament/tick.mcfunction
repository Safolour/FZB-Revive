scoreboard players remove @s[scores={weapon.gun_ultimatelament_rate=0..}] weapon.gun_ultimatelament_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimatelament_reload=0..}] weapon.gun_ultimatelament_reload 1
# 弹夹打空后 5 tick 按命中数回血（录像 240~270 ms 峰值 → 250 ms）
scoreboard players remove @s[scores={weapon.gun_ultimatelament_heal=1..}] weapon.gun_ultimatelament_heal 1
execute if entity @s[scores={weapon.gun_ultimatelament_heal=0}] run function weapon:range/gun/gun/ultimatelament/heal

execute if entity @s[scores={weapon.gun_ultimatelament_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimatelament"}
execute if entity @s[scores={weapon.gun_ultimatelament_reload=0}] run function weapon:range/gun/gun/ultimatelament/refill

execute unless items entity @s weapon *[custom_data~{tag:["ultimatelament"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimatelament run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimatelament

execute if entity @s[scores={weapon.gun_ultimatelament_rate=0..,weapon.gun_ultimatelament_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimatelament"}
execute if entity @s[scores={weapon.gun_ultimatelament_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatelament"}

execute if entity @s[scores={weapon.gun_ultimatelament_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimatelament/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimatelament/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimatelament_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimatelament_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimatelament run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimatelament"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatelament"}
