scoreboard players remove @s weapon.gun_ultimatelament_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/ultimatelament/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_ultimatelament
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_ultimatelament
# 录像：每发在射手位置播这两个声音
playsound entity.splash_potion.throw record @a ~ ~ ~ 1 1.5 0
playsound block.end_portal_frame.fill record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/ultimatelament/summon0
# 连发：再打 extrashot 发
function weapon:range/skill/skill/echo/extrashot/summon {gun:"ultimatelament"}
# 弹夹打空 → 5 tick 后按本轮命中数回血
execute if score @s weapon.gun_echo_clip_ammo matches 0 run scoreboard players set @s weapon.gun_ultimatelament_heal 5
scoreboard players set @s weapon.use 0
