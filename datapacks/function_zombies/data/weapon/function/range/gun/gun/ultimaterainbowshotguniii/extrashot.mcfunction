# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimaterainbowshotguniii_ammo 1
scoreboard players remove @s weapon.gun_ultimaterainbowshotguniii_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimaterainbowshotguniii"}
function weapon:range/gun/slot/xp_lv {gun:"ultimaterainbowshotguniii"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterainbowshotguniii
playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimaterainbowshotguniii/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=1..,weapon.gun_ultimaterainbowshotguniii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotguniii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotguniii"}
return 1
