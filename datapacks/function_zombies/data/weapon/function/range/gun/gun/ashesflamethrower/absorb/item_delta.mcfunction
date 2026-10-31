# 给指定灰烬枪的 custom_data.ashes_gold 加上 weapon ashes.delta（单位 0.01 HP）
$function weapon:range/gun/slot/get_slot/1 {gun:$(gun)}
$execute store result storage weapon ashes.slot int 1 run scoreboard players get @s weapon.gun_$(gun)_slot
function weapon:range/gun/gun/ashesflamethrower/absorb/item_delta0 with storage weapon ashes
