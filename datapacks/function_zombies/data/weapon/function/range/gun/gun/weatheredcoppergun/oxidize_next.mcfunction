# Keep remaining ammunition and cap it to the new stage's capacity.
scoreboard players operation #copper_ammo weapon.state = @s weapon.gun_weatheredcoppergun_ammo
scoreboard players operation #copper_clip weapon.state = @s weapon.gun_weatheredcoppergun_clip_ammo
scoreboard players operation #copper_rate weapon.state = @s weapon.gun_weatheredcoppergun_rate
scoreboard players operation #copper_reload weapon.state = @s weapon.gun_weatheredcoppergun_reload
scoreboard players set @s inventory 2
$data modify storage weapon root.slot set value $(slot)
function weapon:range/gun/_get_item/replace/oxidizedcoppergun0 with storage weapon root
data remove storage weapon root
function inventory:item_store
scoreboard players set @s inventory 1
scoreboard players operation @s weapon.gun_oxidizedcoppergun_slot = @s weapon.gun_weatheredcoppergun_slot
scoreboard players operation @s weapon.gun_oxidizedcoppergun_ammo = ammo weapon.gun_oxidizedcoppergun
execute if score @s perk.double_bullet matches 1 run scoreboard players operation @s weapon.gun_oxidizedcoppergun_ammo *= 2 number
scoreboard players operation @s weapon.gun_oxidizedcoppergun_ammo < #copper_ammo weapon.state
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo = clip_ammo weapon.gun_oxidizedcoppergun
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo < #copper_clip weapon.state
scoreboard players operation @s weapon.gun_oxidizedcoppergun_clip_ammo < @s weapon.gun_oxidizedcoppergun_ammo
scoreboard players operation @s weapon.gun_oxidizedcoppergun_rate = #copper_rate weapon.state
scoreboard players operation @s weapon.gun_oxidizedcoppergun_reload = #copper_reload weapon.state
function weapon:range/gun/slot/count {gun:"oxidizedcoppergun"}
function weapon:range/gun/slot/xp_lv {gun:"oxidizedcoppergun"}
execute if score @s weapon.gun_oxidizedcoppergun_ammo matches 0 run function weapon:range/gun/slot/nodurability {gun:"oxidizedcoppergun"}
data remove storage weapon copper
