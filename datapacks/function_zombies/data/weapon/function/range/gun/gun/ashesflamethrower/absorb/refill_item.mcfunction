# 从指定枪械读取储量；目标上限为 max_health，储量与金血均用 0.01 HP 单位
$function weapon:range/gun/slot/get_slot/1 {gun:$(gun)}
$execute store result storage weapon ashes.slot int 1 run scoreboard players get @s weapon.gun_$(gun)_slot
scoreboard players set #ashes_bank weapon.state 0
function weapon:range/gun/gun/ashesflamethrower/absorb/read_bank with storage weapon ashes
execute unless score #ashes_bank weapon.state matches 1.. run return fail
scoreboard players set #ashes_take weapon.state 0
scoreboard players operation #ashes_room weapon.state = #ashes_cap weapon.state
scoreboard players operation #ashes_room weapon.state -= #ashes_target weapon.state
execute unless score #ashes_room weapon.state matches 1.. run return fail
execute if score #ashes_room weapon.state matches 1.. run scoreboard players operation #ashes_take weapon.state = #ashes_bank weapon.state
execute if score #ashes_room weapon.state matches 1.. run scoreboard players operation #ashes_take weapon.state < #ashes_room weapon.state
execute unless score #ashes_take weapon.state matches 1.. run return fail
scoreboard players operation #ashes_target weapon.state += #ashes_take weapon.state
scoreboard players operation #ashes_delta weapon.state = #ashes_take weapon.state
scoreboard players set #negative weapon.state -1
scoreboard players operation #ashes_delta weapon.state *= #negative weapon.state
execute store result storage weapon ashes.delta int 1 run scoreboard players get #ashes_delta weapon.state
function weapon:range/gun/gun/ashesflamethrower/absorb/item_delta0 with storage weapon ashes
