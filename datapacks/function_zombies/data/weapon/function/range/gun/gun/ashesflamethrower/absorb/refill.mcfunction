# 每 tick 检查：生命上限改变产生的溢出先存枪；受伤/自然衰减降低金血后从枪里回填
execute if score @s stat.player matches 2.. run return fail
execute store result score #ashes_cur weapon.state run data get entity @s AbsorptionAmount 100
execute store result score #ashes_m weapon.state run attribute @s max_absorption get 100
scoreboard players operation #ashes_cur weapon.state < #ashes_m weapon.state
execute store result score #ashes_cap weapon.state run attribute @s max_health get 100
scoreboard players operation #ashes_target weapon.state = #ashes_cur weapon.state

# 上限下降时，把现有超额金血存进背包内的灰烬枪（普通版优先）
scoreboard players operation #ashes_over weapon.state = #ashes_cur weapon.state
scoreboard players operation #ashes_over weapon.state -= #ashes_cap weapon.state
execute if score #ashes_over weapon.state matches 1.. if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_regular
execute if score #ashes_over weapon.state matches 1.. unless items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_ultimate
scoreboard players operation #ashes_target weapon.state < #ashes_cap weapon.state

# 金血不足当前上限时，先消耗普通版储量，再消耗终极版储量
execute if score #ashes_target weapon.state < #ashes_cap weapon.state if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/refill_regular
execute if score #ashes_target weapon.state < #ashes_cap weapon.state if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/refill_ultimate
execute if score #ashes_target weapon.state = #ashes_cur weapon.state run return fail
function weapon:range/gun/gun/ashesflamethrower/absorb/apply
