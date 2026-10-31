# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowshotgunii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotgunii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgunii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgunii"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotgunii
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotgunii/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=1..,weapon.gun_ultimaterainbowshotgunii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotgunii"}
return 1
