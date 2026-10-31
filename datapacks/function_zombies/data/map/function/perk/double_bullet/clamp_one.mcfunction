# Called once for every held gun when double_bullet is removed.
execute if score @s weapon.bp_id = @s weapon.bp_id run function weapon:range/gun/gun/blueprint/stat/apply
$scoreboard players operation #max_ammo perk = ammo weapon.gun_$(gun)
$execute if score @s weapon.gun_$(gun)_ammo > #max_ammo perk run scoreboard players operation @s weapon.gun_$(gun)_ammo = #max_ammo perk
