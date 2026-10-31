# 溢出金血按 2:1 转换成储存值（单位：0.01 生命）
scoreboard players add @s weapon.ashes_ult 0
scoreboard players operation #ashes_store weapon.state = #ashes_over weapon.state
scoreboard players operation #ashes_store weapon.state /= 2 number
scoreboard players operation @s weapon.ashes_ult += #ashes_store weapon.state
execute if score @s weapon.ashes_ult matches 6001.. run scoreboard players set @s weapon.ashes_ult 6000
