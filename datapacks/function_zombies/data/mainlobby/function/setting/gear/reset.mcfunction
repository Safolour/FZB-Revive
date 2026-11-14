# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute as @e[type=chest_minecart,tag=setting_gear] run function mainlobby:setting/gear/prepare_reset
execute as @e[type=chest_minecart,tag=setting_gear] run function mainlobby:setting/gear/kill
advancement revoke @a only mainlobby:setting_gear
clear @a *[custom_data~{tag:["setting_gear"]}]
