execute if score @s weapon.gun_blueprint_ammo matches ..0 run return 0

# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了、在换弹、手上不是蓝图就停
execute unless items entity @s weapon.mainhand *[custom_data~{skill:"echo",echo:"blueprint"}] run return fail
function weapon:range/gun/gun/blueprint/stat/apply
execute if entity @s[scores={weapon.gun_echo_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_echo_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_blueprint_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/blueprint/xp_lv
scoreboard players operation @s weapon.use = uuid weapon.gun_blueprint
data modify storage weapon bp.cur set from entity @s SelectedItem.components."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/sound with storage weapon bp.cur
function weapon:range/gun/gun/blueprint/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_blueprint_ammo=1..,weapon.gun_echo_clip_ammo=0}] run function weapon:range/skill/skill/echo/guns/blueprint/reload
execute if entity @s[scores={weapon.gun_blueprint_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"echo"}
return 1
