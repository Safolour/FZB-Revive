
scoreboard players remove @s[scores={weapon.gun_rifle_rate=0..}] weapon.gun_rifle_rate 1
scoreboard players remove @s[scores={weapon.gun_rifle_reload=0..}] weapon.gun_rifle_reload 1

execute if entity @s[scores={weapon.gun_rifle_reload=0..}] run function weapon:range/gun/slot/reload {gun:"rifle"}
execute if entity @s[scores={weapon.gun_rifle_reload=0}] run function weapon:range/gun/gun/rifle/refill

execute unless items entity @s weapon *[custom_data~{tag:["rifle"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_rifle run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_rifle

execute if entity @s[scores={weapon.gun_rifle_rate=0..,weapon.gun_rifle_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"rifle"}
execute if entity @s[scores={weapon.gun_rifle_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"rifle"}

execute if entity @s[scores={weapon.gun_rifle_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/rifle/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/rifle/leftclick

scoreboard players operation @s[scores={weapon.gun_rifle_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_rifle_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_rifle run return fail
execute if entity @s[scores={weapon.gun_rifle_reload=-1}] run function weapon:range/gun/slot/count {gun:"rifle"}
function weapon:range/gun/slot/xp_lv {gun:"rifle"}