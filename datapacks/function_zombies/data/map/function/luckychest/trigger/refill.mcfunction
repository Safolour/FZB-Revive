
$execute as @p[tag=chosen] run function map:perk/double_bullet {gun:$(ammo)}
$execute as @p[tag=chosen] if score @s weapon.gun_$(ammo)_ammo >= #max_ammo perk run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
$execute as @p[tag=chosen] if score @s weapon.gun_$(ammo)_ammo >= #max_ammo perk run return run tellraw @s [{translate:"zb.luckychest.tellraw.8"}]
$tellraw @p[tag=chosen] [{translate:"zb.luckychest.tellraw.11",with:[{translate:"zb.luckychest.item.$(ammo)"}]}]
$execute as @p[tag=chosen] at @s run function weapon:range/gun/gun/$(ammo)/allammo
execute as @p[tag=chosen] at @s run playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
function map:luckychest/trigger/close
