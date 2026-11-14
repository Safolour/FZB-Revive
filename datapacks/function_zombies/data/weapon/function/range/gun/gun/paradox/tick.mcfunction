scoreboard players remove @s[scores={weapon.gun_paradox_rate=0..}] weapon.gun_paradox_rate 1
scoreboard players remove @s[scores={weapon.gun_paradox_reload=0..}] weapon.gun_paradox_reload 1
execute if score @s weapon.gun_paradox_reload matches 0.. run function weapon:range/gun/slot/reload {gun:"paradox"}
execute if score @s weapon.gun_paradox_reload matches 0 run playsound item.crossbow.loading_end record @s ~ ~ ~ 1.5 1
execute if score @s weapon.gun_paradox_reload matches 0 run function weapon:range/gun/gun/paradox/refill
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"paradox"}] run return 0
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_paradox run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_paradox
execute if entity @s[scores={weapon.gun_paradox_rate=0..,weapon.gun_paradox_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"paradox"}
execute if score @s weapon.gun_paradox_rate matches 0 run function weapon:range/gun/slot/xp_lv {gun:"paradox"}
execute if score @s weapon.pd_state matches 1 run return 0
execute if score @s weapon.pd_state matches 3 run return 0
execute if score @s weapon.gun_paradox_reload matches 1.. run function weapon:range/gun/message/reloading
execute unless score @s weapon.gun_paradox_reload matches 1.. run function weapon:range/gun/gun/paradox/actionbar
execute if score @s weapon.rightclick matches 1.. run function weapon:range/gun/gun/paradox/rightclick
execute if score @s weapon.leftclick matches 1.. run function weapon:range/gun/gun/paradox/leftclick
execute if entity @s[scores={weapon.gun_paradox_ammo=0,weapon.gun_noammo_cd=-1}] run scoreboard players operation @s weapon.gun_noammo_cd = cd weapon.gun_noammo_cd
execute if score @s weapon.gun_paradox_ammo matches 0 run return run function weapon:range/gun/message/outofammo
execute if score @s weapon.gun_hold0 = uuid weapon.gun_paradox run return 0
execute if score @s weapon.gun_paradox_reload matches -1 run function weapon:range/gun/slot/count {gun:"paradox"}
function weapon:range/gun/slot/xp_lv {gun:"paradox"}
