# Keep remaining ammunition and cap it to the new stage's capacity.
scoreboard players operation #copper_ammo weapon.state = @s weapon.gun_exposedcoppergun_ammo
scoreboard players operation #copper_clip weapon.state = @s weapon.gun_exposedcoppergun_clip_ammo
scoreboard players operation #copper_rate weapon.state = @s weapon.gun_exposedcoppergun_rate
scoreboard players operation #copper_reload weapon.state = @s weapon.gun_exposedcoppergun_reload
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
function weapon:range/gun/_get_item/replace/weatheredcoppergun0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
scoreboard players operation @s weapon.gun_weatheredcoppergun_slot = @s weapon.gun_exposedcoppergun_slot
scoreboard players operation @s weapon.gun_weatheredcoppergun_ammo = ammo weapon.gun_weatheredcoppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_weatheredcoppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_weatheredcoppergun_ammo < #copper_ammo weapon.state
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo = clip_ammo weapon.gun_weatheredcoppergun
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo < #copper_clip weapon.state
scoreboard players operation @s weapon.gun_weatheredcoppergun_clip_ammo < @s weapon.gun_weatheredcoppergun_ammo
scoreboard players operation @s weapon.gun_weatheredcoppergun_rate = #copper_rate weapon.state
scoreboard players operation @s weapon.gun_weatheredcoppergun_reload = #copper_reload weapon.state
function weapon:range/gun/slot/count {gun:"weatheredcoppergun"}
function weapon:range/gun/slot/xp_lv {gun:"weatheredcoppergun"}
execute if score @s weapon.gun_weatheredcoppergun_ammo matches 0 run function weapon:range/gun/slot/nodurability {gun:"weatheredcoppergun"}
data remove storage weapon copper
