# 玩家按 Q 丢出函数（inventory:throw_item 打上 weapon.function_laser 标签、物品已放回）后，下一 tick 由 function/tick 调用
tag @s remove weapon.function_laser
execute if entity @s[tag=weapon.laser_charge] run return fail
execute unless items entity @s weapon.mainhand *[custom_data~{tag:["function"]}] run return fail
function weapon:range/gun/gun/function/laser/cap_read
execute if score @s weapon.function_charge matches 1001.. run scoreboard players set @s weapon.function_charge 1000
execute unless score @s weapon.function_charge >= @s weapon.laser_threshold run return run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5 0
function weapon:range/gun/gun/function/laser/charge/start
