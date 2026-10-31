
#execute unless items entity @s weapon *[custom_data~{tag:["ultimaterainbowrifleiii"]}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowrifleiii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowrifleiii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowrifleiii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowrifleiii"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowrifleiii
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowrifleiii/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=1..,weapon.gun_ultimaterainbowrifleiii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleiii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifleiii"}
return 1