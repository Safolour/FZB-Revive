execute unless score @s weapon.gun_ultimaterainbowsniperii_ammo matches 1.. run return 0
execute unless score @s weapon.gun_ultimaterainbowsniperii_clip_ammo matches 1.. run return 0

# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowsniperii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowsniperii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowsniperii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniperii"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniperii
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniperii/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=1..,weapon.gun_ultimaterainbowsniperii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniperii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowsniperii"}
return 1
