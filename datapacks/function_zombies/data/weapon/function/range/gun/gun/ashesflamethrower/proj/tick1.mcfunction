# 弹丸每 tick（weapon:range/gun/tick1 调用，执行者 = 弹丸）
execute store result score #now weapon.ashes_born run time query gametime
execute if score @s weapon.ashes_born = #now weapon.ashes_born run return fail
execute at @s run function weapon:range/gun/gun/ashesflamethrower/proj/tick
