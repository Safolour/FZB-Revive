scoreboard players remove @s[scores={weapon.gun_ultimateseason_autumn_rate=0..}] weapon.gun_ultimateseason_autumn_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimateseason_autumn_reload=0..}] weapon.gun_ultimateseason_autumn_reload 1

execute if entity @s[scores={weapon.gun_ultimateseason_autumn_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimateseason_autumn"}
execute if entity @s[scores={weapon.gun_ultimateseason_autumn_reload=0}] run function weapon:range/gun/gun/ultimateseason_autumn/refill
execute if entity @s[scores={weapon.gun_ultimateseason_autumn_reload=0..}] run function inventory:item_store

execute unless items entity @s weapon *[custom_data~{tag:["ultimateseason_autumn"]}] run return fail
function weapon:range/gun/gun/ultimateseason_autumn/sync_item
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimateseason_autumn run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimateseason_autumn

execute if entity @s[scores={weapon.gun_ultimateseason_autumn_rate=0..,weapon.gun_ultimateseason_autumn_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimateseason_autumn"}
execute if entity @s[scores={weapon.gun_ultimateseason_autumn_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_autumn"}

execute if entity @s[scores={weapon.gun_ultimateseason_autumn_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimateseason_autumn/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimateseason_autumn/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimateseason_autumn_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimateseason_autumn_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimateseason_autumn run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_autumn_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimateseason_autumn"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_autumn"}
