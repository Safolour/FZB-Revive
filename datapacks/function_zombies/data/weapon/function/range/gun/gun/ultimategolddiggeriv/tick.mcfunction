
scoreboard players remove @s[scores={weapon.gun_ultimategolddiggeriv_rate=0..}] weapon.gun_ultimategolddiggeriv_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimategolddiggeriv_reload=0..}] weapon.gun_ultimategolddiggeriv_reload 1

execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimategolddiggeriv"}
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_reload=0}] run function weapon:range/gun/gun/ultimategolddiggeriv/refill

execute unless items entity @s weapon *[custom_data~{tag:["ultimategolddiggeriv"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimategolddiggeriv run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimategolddiggeriv

execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_rate=0..,weapon.gun_ultimategolddiggeriv_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimategolddiggeriv"}
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriv"}

execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimategolddiggeriv/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimategolddiggeriv/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimategolddiggeriv_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimategolddiggeriv run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimategolddiggeriv"}
function weapon:range/gun/slot/xp_lv {gun:"ultimategolddiggeriv"}