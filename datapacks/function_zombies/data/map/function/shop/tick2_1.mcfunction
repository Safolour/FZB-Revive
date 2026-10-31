
execute unless items entity @s weapon *[custom_data~{tag:["gun"]}] run return fail
$function map:perk/double_bullet {gun:$(gun)}
$execute if score @s weapon.gun_$(gun)_ammo >= #max_ammo perk run return fail
function map:shop/refill_hint