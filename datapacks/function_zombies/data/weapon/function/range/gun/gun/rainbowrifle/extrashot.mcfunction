
#execute unless items entity @s weapon *[custom_data~{tag:["rainbowrifle"]}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrifle_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_rainbowrifle_ammo 1
scoreboard players remove @s weapon.gun_rainbowrifle_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rainbowrifle"}
function weapon:range/gun/slot/xp_lv {gun:"rainbowrifle"}
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowrifle
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/rainbowrifle/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=1..,weapon.gun_rainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrifle/reload
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowrifle"}
return 1