
#execute unless items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifle"]}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowrifle_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrifle_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifle"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifle"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifle/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=1..,weapon.gun_ultimaterainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifle/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifle"}
return 1