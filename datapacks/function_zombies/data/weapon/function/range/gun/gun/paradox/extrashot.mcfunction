execute unless items entity @s weapon.mainhand *[custom_data~{gun:"paradox"}] run return 0
execute if score @s weapon.pd_state matches 1 run return 0
execute if score @s weapon.pd_state matches 3 run return 0
execute if score @s weapon.gun_paradox_reload matches 0.. run return 0
execute unless score @s weapon.gun_paradox_clip_ammo matches 1.. run return 0
execute unless score @s weapon.gun_paradox_ammo matches 1.. run return 0
scoreboard players remove @s weapon.gun_paradox_ammo 1
scoreboard players remove @s weapon.gun_paradox_clip_ammo 1
function weapon:range/gun/slot/count {gun:"paradox"}
function weapon:range/gun/slot/xp_lv {gun:"paradox"}
function weapon:range/gun/gun/paradox/summon0
execute if entity @s[scores={weapon.gun_paradox_ammo=1..,weapon.gun_paradox_clip_ammo=0}] run function weapon:range/gun/gun/paradox/reload
execute if score @s weapon.gun_paradox_ammo matches 0 run function weapon:range/gun/slot/nodurability {gun:"paradox"}
return 1
