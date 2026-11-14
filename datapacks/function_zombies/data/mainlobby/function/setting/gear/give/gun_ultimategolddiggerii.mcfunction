# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# 矿车执行；gear.owner 绑定取得物品的玩家，避免多人串号。
scoreboard players operation #owner gear.owner = @s gear.owner
execute as @a[scores={system.room=2}] if score @s uuid = #owner gear.owner at @s run function mainlobby:setting/gear/grant/gun_ultimategolddiggerii
function mainlobby:setting/gear/render
