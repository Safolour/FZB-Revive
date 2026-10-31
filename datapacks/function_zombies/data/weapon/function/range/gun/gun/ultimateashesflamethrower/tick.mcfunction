
scoreboard players remove @s[scores={weapon.gun_ultimateashesflamethrower_rate=0..}] weapon.gun_ultimateashesflamethrower_rate 1
scoreboard players remove @s[scores={weapon.gun_ultimateashesflamethrower_reload=0..}] weapon.gun_ultimateashesflamethrower_reload 1

execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_reload=0..}] run function weapon:range/gun/slot/reload {gun:"ultimateashesflamethrower"}
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_reload=0}] run function weapon:range/gun/gun/ultimateashesflamethrower/refill

execute unless items entity @s weapon *[custom_data~{tag:["ultimateashesflamethrower"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_ultimateashesflamethrower run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_ultimateashesflamethrower

execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_rate=0..,weapon.gun_ultimateashesflamethrower_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"ultimateashesflamethrower"}
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"ultimateashesflamethrower"}

execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_reload=1..}] run function weapon:range/gun/message/reloading

execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/gun/gun/ultimateashesflamethrower/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/ultimateashesflamethrower/leftclick

scoreboard players operation @s[scores={weapon.gun_ultimateashesflamethrower_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=0}] run return run function weapon:range/gun/message/outofammo

function weapon:range/gun/gun/ashesflamethrower/absorb/actionbar

execute if score @s weapon.gun_hold0 = uuid weapon.gun_ultimateashesflamethrower run return fail
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_reload=-1}] run function weapon:range/gun/slot/count {gun:"ultimateashesflamethrower"}
function weapon:range/gun/slot/xp_lv {gun:"ultimateashesflamethrower"}
