# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
# 在领取 NPC 脚下执行；三层原生箱子矿车右键范围覆盖全身。
execute as @e[type=chest_minecart,tag=setting_gear,tag=!opened] run function mainlobby:setting/gear/kill
function mainlobby:setting/gear/spawn_one {height:0}
function mainlobby:setting/gear/spawn_one {height:0.7}
function mainlobby:setting/gear/spawn_one {height:1.4}
