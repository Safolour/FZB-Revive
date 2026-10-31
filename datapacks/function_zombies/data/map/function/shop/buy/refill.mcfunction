
$function map:perk/double_bullet {gun:$(ammo)}
$execute if score @s weapon.gun_$(ammo)_ammo >= #max_ammo perk run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute if score @s weapon.gun_$(ammo)_ammo >= #max_ammo perk run return run tellraw @s [{translate:"zb.shop.tellraw.5"}]
$tellraw @s [{translate:zb.shop.tellraw.4,with:[{translate:zb.shop.tellraw.$(ammo)}]}]
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s gold -= price shop.price
$function weapon:range/gun/gun/$(ammo)/allammo