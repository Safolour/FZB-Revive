
#execute unless items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifleii"]}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowrifleii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrifleii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleii"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifleii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifleii/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=1..,weapon.gun_ultimaterainbowrifleii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifleii"}
return 1