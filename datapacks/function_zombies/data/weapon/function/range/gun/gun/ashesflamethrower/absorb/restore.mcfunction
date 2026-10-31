# 玩家执行（ashesflamethrower/tick 每 tick 调用，所有玩家都会跑）：加伤害吸收的下一 tick 去掉夹值修饰符
execute store result score #now weapon.ashes_clamp run time query gametime
execute if score @s weapon.ashes_clamp = #now weapon.ashes_clamp run return fail
attribute @s max_absorption modifier remove zb:ashes_clamp
scoreboard players reset @s weapon.ashes_clamp
