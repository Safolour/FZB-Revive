# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
execute as @a[advancements={mainlobby:setting_gear=true}] at @s run function mainlobby:setting/gear/open
execute as @e[type=chest_minecart,tag=setting_gear,tag=opened] at @s run function mainlobby:setting/gear/tick
execute as @e[type=item] if items entity @s contents *[custom_data~{tag:["setting_gear"]}] run kill @s
