scoreboard players remove @s weapon.gun_blueprint_ammo 1
scoreboard players remove @s weapon.gun_echo_clip_ammo 1
function weapon:range/skill/skill/echo/count
function weapon:range/skill/skill/echo/guns/blueprint/xp_lv
execute unless score @s weapon.gun_echo_rate0 = @s weapon.gun_echo_rate0 run scoreboard players operation @s weapon.gun_echo_rate0 = rate weapon.gun_blueprint
scoreboard players operation @s weapon.gun_echo_rate = @s weapon.gun_echo_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_blueprint
# 这把蓝图自己的音效 / 粒子（stat.sound、stat.pitch、stat.particle）
data modify storage weapon bp.cur set from entity @s SelectedItem.components."minecraft:custom_data".stat
function weapon:range/gun/gun/blueprint/sound with storage weapon bp.cur
function weapon:range/gun/gun/blueprint/summon0
# 75% 以后才有连发
execute if score extrashot weapon.gun_blueprint matches 1.. run function weapon:range/skill/skill/echo/extrashot/summon {gun:"blueprint"}
scoreboard players set @s weapon.use 0
