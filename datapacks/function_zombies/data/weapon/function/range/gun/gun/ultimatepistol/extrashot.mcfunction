
#execute unless items entity @s weapon *[custom_data~{tag:["ultimatepistol"]}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimatepistol_ammo 1
scoreboard players remove @s weapon.gun_ultimatepistol_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatepistol"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatepistol"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatepistol
playsound entity.iron_golem.hurt record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatepistol/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=1..,weapon.gun_ultimatepistol_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepistol/reload
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatepistol"}
return 1