scoreboard players remove @s weapon.gun_lament_ammo 1
scoreboard players remove @s weapon.gun_lament_clip_ammo 1
function weapon:range/gun/slot/count {gun:"lament"}
function weapon:range/gun/slot/xp_lv {gun:"lament"}
execute unless score @s weapon.gun_lament_rate0 = @s weapon.gun_lament_rate0 run scoreboard players operation @s weapon.gun_lament_rate0 = rate weapon.gun_lament
scoreboard players operation @s weapon.gun_lament_rate = @s weapon.gun_lament_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_lament
# 录像：每发在射手位置播这两个声音
playsound entity.splash_potion.throw record @a ~ ~ ~ 1 1.5 0
playsound block.end_portal_frame.fill record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/lament/summon0
# 连发：再打 extrashot 发
function weapon:range/gun/gun/extrashot/summon {gun:"lament"}
# 弹夹打空 → 5 tick 后按本轮命中数回血
execute if score @s weapon.gun_lament_clip_ammo matches 0 run scoreboard players set @s weapon.gun_lament_heal 5
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_lament matches 1.. run function weapon:range/skill/skill/echo/record {gun:"lament"}
# END ECHO RECORD
