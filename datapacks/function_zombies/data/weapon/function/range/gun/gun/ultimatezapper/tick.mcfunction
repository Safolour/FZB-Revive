
scoreboard players remove @s[scores={weapon.gun_ultimatezapper_rate=0..}] weapon.gun_ultimatezapper_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimatezapper_reload=0..}] weapon.gun_ultimatezapper_reload 1

execute if entity @s[scores={weapon.gun_ultimatezapper_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimatezapper"}
execute if entity @s[scores={weapon.gun_ultimatezapper_reload=0}] run function weapon:range/gun/gun/ultimatezapper/refill

execute unless items entity @s weapon *[custom_data~{tag:["ultimatezapper"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimatezapper run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimatezapper

execute if entity @s[scores={weapon.gun_ultimatezapper_rate=0..,weapon.gun_ultimatezapper_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimatezapper"}
execute if entity @s[scores={weapon.gun_ultimatezapper_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimatezapper"}

execute if entity @s[scores={weapon.gun_ultimatezapper_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimatezapper/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimatezapper/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimatezapper_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimatezapper run return fail
execute if entity @s[scores={weapon.gun_ultimatezapper_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimatezapper"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatezapper"}