scoreboard players remove @s[scores={weapon.gun_ultimateseason_summer_rate=0..}] weapon.gun_ultimateseason_summer_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimateseason_summer_reload=0..}] weapon.gun_ultimateseason_summer_reload 1

execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimateseason_summer"}
execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=0}] run function weapon:range/gun/gun/ultimateseason_summer/refill
execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=0..}] run function inventory:item_store

execute unless items entity @s weapon *[custom_data~{tag:["ultimateseason_summer"]}] run return fail
function weapon:range/gun/gun/ultimateseason_summer/sync_item
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimateseason_summer run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimateseason_summer

execute if entity @s[scores={weapon.gun_ultimateseason_summer_rate=0..,weapon.gun_ultimateseason_summer_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimateseason_summer"}
execute if entity @s[scores={weapon.gun_ultimateseason_summer_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_summer"}

execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.gun_ultimateseason_summer_heat=1..,weapon.gun_ultimateseason_summer_reload=-1}] run title @s actionbar [{"translate":"zb.item.gun.season_summer.actionbar.0","color":"#FF8900","with":[{"score":{"name":"@s","objective":"weapon.gun_ultimateseason_summer_heat"},"color":"#FF8900"},{"keybind":"key.drop","bold":true,"color":"#FF8900"}]}]
execute if entity @s[tag=weapon.season_summer_burst] run function weapon:range/gun/gun/ultimateseason_summer/burst
tag @s remove weapon.season_summer_burst
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimateseason_summer/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimateseason_summer/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimateseason_summer_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimateseason_summer run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimateseason_summer"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateseason_summer"}
