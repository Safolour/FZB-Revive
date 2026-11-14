# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
advancement revoke @s only mainlobby:setting_gear
execute unless score @s system.room matches 2 run return fail
scoreboard players operation #opener gear.owner = @s uuid
execute as @e[type=chest_minecart,tag=setting_gear,tag=opened] if score @s gear.owner = #opener gear.owner run function mainlobby:setting/gear/kill
execute as @e[type=chest_minecart,tag=setting_gear,tag=!opened,nbt=!{LootTable:"mainlobby:setting_gear"},sort=nearest,limit=1,distance=..6] at @s run function mainlobby:setting/gear/open_cart
