# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_rainbowrocketlauncher_ammo 1
scoreboard players remove @s weapon.gun_rainbowrocketlauncher_clip_ammo 1
function weapon:range/gun/slot/count {gun:"rainbowrocketlauncher"}
function weapon:range/gun/slot/xp_lv {gun:"rainbowrocketlauncher"}
scoreboard players operation @s weapon.use = uuid weapon.gun_rainbowrocketlauncher
playsound entity.snowball.throw player @a ~ ~ ~ 1 0 0
function weapon:range/gun/gun/rainbowrocketlauncher/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=1..,weapon.gun_rainbowrocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrocketlauncher/reload
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowrocketlauncher"}
return 1
