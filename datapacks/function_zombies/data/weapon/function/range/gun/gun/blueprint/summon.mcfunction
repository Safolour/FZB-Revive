scoreboard players remove @s weapon.gun_blueprint_ammo 1
scoreboard players remove @s weapon.gun_blueprint_clip_ammo 1
function weapon:range/gun/slot/count {gun:"blueprint"}
function weapon:range/gun/slot/xp_lv {gun:"blueprint"}
execute unless score @s weapon.gun_blueprint_rate0 = @s weapon.gun_blueprint_rate0 run scoreboard players operation @s weapon.gun_blueprint_rate0 = rate weapon.gun_blueprint
scoreboard players operation @s weapon.gun_blueprint_rate = @s weapon.gun_blueprint_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_blueprint
# 这把蓝图自己的音效 / 粒子（stat.sound、stat.pitch、stat.particle）
data modify storage weapon bp.cur set from entity @s SelectedItem.components."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/sound with storage weapon bp.cur
function weapon:range/gun/gun/blueprint/summon0
# 75% 以后才有连发
execute if score extrashot weapon.gun_blueprint matches 1.. run function weapon:range/gun/gun/extrashot/summon {gun:"blueprint"}
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_blueprint matches 1.. run function weapon:range/skill/skill/echo/record {gun:"blueprint"}
# END ECHO RECORD
