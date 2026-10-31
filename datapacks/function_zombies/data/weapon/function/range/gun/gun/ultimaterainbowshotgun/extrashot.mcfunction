# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowshotgun_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotgun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotgun"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotgun"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotgun
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotgun/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=1..,weapon.gun_ultimaterainbowshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgun/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotgun"}
return 1
