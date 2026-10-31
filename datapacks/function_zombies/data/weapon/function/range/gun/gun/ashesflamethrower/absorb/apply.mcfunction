# 将 #ashes_target（0.01 HP）写入 AbsorptionAmount：下一个实体更新 tick 由属性上限夹到目标
attribute @s max_absorption modifier remove zb:ashes_clamp
effect clear @s absorption
effect give @s absorption infinite 49 true
execute store result score #ashes_m weapon.state run attribute @s max_absorption get 100
scoreboard players operation #ashes_delta weapon.state = #ashes_target weapon.state
scoreboard players operation #ashes_delta weapon.state -= #ashes_m weapon.state
execute store result storage weapon ashes.v double 0.01 run scoreboard players get #ashes_delta weapon.state
function weapon:range/gun/gun/ashesflamethrower/absorb/clamp with storage weapon ashes
data remove storage weapon ashes
execute store result score @s weapon.ashes_clamp run time query gametime
