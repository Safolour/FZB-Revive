scoreboard players remove @s[scores={weapon.gun_ultimaterainbowshotgunii_rate=0..}] weapon.gun_ultimaterainbowshotgunii_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] weapon.gun_ultimaterainbowshotgunii_reload 1

execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimaterainbowshotgunii"}
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/refill
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] run function inventory:item_store

execute unless items entity @s weapon *[custom_data~{tag:["ultimaterainbowshotgunii"]}] run return fail
function weapon:range/gun/gun/ultimaterainbowshotgunii/sync_item
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimaterainbowshotgunii run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimaterainbowshotgunii

execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_rate=0..,weapon.gun_ultimaterainbowshotgunii_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimaterainbowshotgunii"}
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgunii"}

execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimaterainbowshotgunii run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgunii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgunii"}
