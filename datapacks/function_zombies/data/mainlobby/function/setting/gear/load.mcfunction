# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
scoreboard objectives add gear.owner dummy
scoreboard objectives add gear.menu dummy
scoreboard objectives add gear.count dummy
# Migrate an opened menu before changed slot checks can mistake the old layout for a click.
# Remove the name component itself, including legacy empty names.
execute as @e[type=chest_minecart,tag=setting_gear] run data remove entity @s CustomName
execute as @e[type=chest_minecart,tag=setting_gear,tag=opened] at @s run function mainlobby:setting/gear/render
