scoreboard players remove @s[scores={weapon.gun_season_autumn_rate=0..}] weapon.gun_season_autumn_rate 1
scoreboard players remove @s[scores={weapon.gun_season_autumn_reload=0..}] weapon.gun_season_autumn_reload 1

execute if entity @s[scores={weapon.gun_season_autumn_reload=0..}] run function weapon:range/gun/slot/reload {gun:"season_autumn"}
execute if entity @s[scores={weapon.gun_season_autumn_reload=0}] run function weapon:range/gun/gun/season_autumn/refill
execute if entity @s[scores={weapon.gun_season_autumn_reload=0..}] run function inventory:item_store

execute unless items entity @s weapon *[custom_data~{tag:["season_autumn"]}] run return fail
function weapon:range/gun/gun/season_autumn/sync_item
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_season_autumn run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_season_autumn

execute if entity @s[scores={weapon.gun_season_autumn_rate=0..,weapon.gun_season_autumn_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"season_autumn"}
execute if entity @s[scores={weapon.gun_season_autumn_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"season_autumn"}

execute if entity @s[scores={weapon.gun_season_autumn_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/season_autumn/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/season_autumn/leftclick

scoreboard players operation @s[scores={weapon.gun_season_autumn_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_season_autumn_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_season_autumn run return fail
execute if entity @s[scores={weapon.gun_season_autumn_reload=-1}] run function weapon:range/gun/slot/count {gun:"season_autumn"}
function weapon:range/gun/slot/xp_lv {gun:"season_autumn"}
