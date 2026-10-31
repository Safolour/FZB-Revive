execute if score @s weapon.gun_machinegun_ammo matches ..0 run return 0

# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了或在换弹就停
execute if entity @s[scores={weapon.gun_echo_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_machinegun_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/machinegun/xp_lv
scoreboard players operation @s weapon.use = uuid weapon.gun_machinegun
playsound entity.firework_rocket.large_blast_far record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/machinegun/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_machinegun_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/machinegun/reload
execute if entity @s[scores={weapon.gun_machinegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"echo"}
return 1
