execute if score @s weapon.bp_id = @s weapon.bp_id run function weapon:range/gun/gun/blueprint/stat/apply

scoreboard players operation @s weapon.gun_blueprint_ammo = ammo weapon.gun_blueprint
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_blueprint_ammo *= 2 number
scoreboard players operation @s weapon.gun_blueprint_clip_ammo = clip_ammo weapon.gun_blueprint
scoreboard players set @s weapon.gun_blueprint_rate 0
scoreboard players set @s weapon.gun_blueprint_reload 0
execute if items entity @s weapon *[custom_data~{tag:["blueprint"]}] run function weapon:range/gun/slot/xp_lv {gun:"blueprint"}
execute if items entity @s container.* *[custom_data~{tag:["blueprint"]}] run function weapon:range/gun/slot/count {gun:"blueprint"}