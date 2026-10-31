# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或正在换弹就停
execute if entity @s[scores={weapon.gun_ultimatelament_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_ultimatelament_ammo 1
scoreboard players remove @s weapon.gun_ultimatelament_clip_ammo 1
function weapon:range/gun/slot/count {gun:"ultimatelament"}
function weapon:range/gun/slot/xp_lv {gun:"ultimatelament"}
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatelament
playsound entity.splash_potion.throw record @a ~ ~ ~ 1 1.5 0
playsound block.end_portal_frame.fill record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatelament/summon0
execute if score @s weapon.gun_ultimatelament_clip_ammo matches 0 run scoreboard players set @s weapon.gun_ultimatelament_heal 5
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=1..,weapon.gun_ultimatelament_clip_ammo=0}] run function weapon:range/gun/gun/ultimatelament/reload
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatelament"}
return 1
