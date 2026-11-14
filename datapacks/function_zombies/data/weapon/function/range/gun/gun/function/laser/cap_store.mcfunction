# 玩家执行（整条激光射线结束后）：同步函数枪阈值到背包恢复缓存
tag @s remove weapon.laser_cap_dirty
execute unless score @s inventory.lock matches 1 run return fail
scoreboard players set @s inventory 2
function inventory:item_store0
scoreboard players set @s inventory 1
