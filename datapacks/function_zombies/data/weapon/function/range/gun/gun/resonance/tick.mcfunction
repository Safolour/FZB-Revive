execute if entity @s[tag=weapon.res_cast] run return 0
function weapon:range/gun/gun/resonance/charge_tick
scoreboard players remove @s[scores={weapon.gun_resonance_rate=0..}] weapon.gun_resonance_rate 1
scoreboard players remove @s[scores={weapon.gun_resonance_reload=0..}] weapon.gun_resonance_reload 1

execute if entity @s[scores={weapon.gun_resonance_reload=0..}] run function weapon:range/gun/slot/reload {gun:"resonance"}
execute if entity @s[scores={weapon.gun_resonance_reload=0}] run function weapon:range/gun/gun/resonance/refill
execute if entity @s[scores={weapon.gun_resonance_reload=0..}] run function inventory:item_store

execute unless items entity @s weapon *[custom_data~{tag:["resonance"]}] run return fail
function weapon:range/gun/gun/resonance/sync_item
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_resonance run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_resonance

execute if entity @s[scores={weapon.gun_resonance_rate=0..,weapon.gun_resonance_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"resonance"}
execute if entity @s[scores={weapon.gun_resonance_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"resonance"}

execute if entity @s[scores={weapon.gun_resonance_reload=1..}] run function weapon:range/gun/message/reloading
execute unless entity @s[scores={weapon.gun_resonance_reload=1..}] run function weapon:range/gun/gun/resonance/actionbar

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/resonance/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/resonance/leftclick

scoreboard players operation @s[scores={weapon.gun_resonance_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_resonance_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_resonance run return fail
execute if entity @s[scores={weapon.gun_resonance_reload=-1}] run function weapon:range/gun/slot/count {gun:"resonance"}
function weapon:range/gun/slot/xp_lv {gun:"resonance"}
