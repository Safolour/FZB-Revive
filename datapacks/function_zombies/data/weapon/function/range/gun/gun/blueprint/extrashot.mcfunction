
# 连发的后续子弹（weapon:range/gun/gun/extrashot/1 调用）：弹夹空了、在换弹、手上不是蓝图就停
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"blueprint"}] run return fail
function weapon:range/gun/gun/blueprint/stat/apply
execute if entity @s[scores={weapon.gun_blueprint_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_blueprint_reload=0..}] run return fail
scoreboard players remove @s weapon.gun_blueprint_ammo 1
scoreboard players remove @s weapon.gun_blueprint_clip_ammo 1
function weapon:range/gun/slot/count {gun:"blueprint"}
function weapon:range/gun/slot/xp_lv {gun:"blueprint"}
scoreboard players operation @s weapon.use = uuid weapon.gun_blueprint
data modify storage weapon bp.cur set from entity @s SelectedItem.components."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/sound with storage weapon bp.cur
function weapon:range/gun/gun/blueprint/summon0
scoreboard players set @s weapon.use 0
execute if entity @s[scores={weapon.gun_blueprint_ammo=1..,weapon.gun_blueprint_clip_ammo=0}] run function weapon:range/gun/gun/blueprint/reload
execute if entity @s[scores={weapon.gun_blueprint_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"blueprint"}
return 1
