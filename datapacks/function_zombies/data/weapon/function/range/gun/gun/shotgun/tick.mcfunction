
scoreboard players remove @s[scores={weapon.gun_shotgun_rate=0..}] weapon.gun_shotgun_rate 1
scoreboard players remove @s[scores={weapon.gun_shotgun_reload=0..}] weapon.gun_shotgun_reload 1

execute if entity @s[scores={weapon.gun_shotgun_reload=0..}] run function weapon:range/gun/slot/reload {gun:"shotgun"}
execute if entity @s[scores={weapon.gun_shotgun_reload=0}] run function weapon:range/gun/gun/shotgun/refill

execute unless items entity @s weapon *[custom_data~{tag:["shotgun"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_shotgun run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_shotgun

execute if entity @s[scores={weapon.gun_shotgun_rate=0..,weapon.gun_shotgun_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"shotgun"}
execute if entity @s[scores={weapon.gun_shotgun_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"shotgun"}

execute if entity @s[scores={weapon.gun_shotgun_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/shotgun/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/shotgun/leftclick

scoreboard players operation @s[scores={weapon.gun_shotgun_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_shotgun_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_shotgun run return fail
execute if entity @s[scores={weapon.gun_shotgun_reload=-1}] run function weapon:range/gun/slot/count {gun:"shotgun"}
function weapon:range/gun/slot/xp_lv {gun:"shotgun"}