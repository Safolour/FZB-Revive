
# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowsniper_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowsniper_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowsniper"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowsniper"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowsniper
playsound entity.firework_rocket.blast_far record @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/ultimaterainbowsniper/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=1..,weapon.gun_ultimaterainbowsniper_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniper/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowsniper"}
return 1
