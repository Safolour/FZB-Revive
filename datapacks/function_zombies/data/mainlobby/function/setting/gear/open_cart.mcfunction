# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
tag @s add opened
scoreboard players operation @s gear.owner = #opener gear.owner
summon chest_minecart ~ ~ ~ {Tags:["setting.gear","setting_gear","minecart","precedence"],DisplayState:{Name:"barrier"},NoGravity:1b,Invulnerable:1b,LootTable:"mainlobby:setting_gear"}
team join collision @e[type=chest_minecart,tag=setting_gear,tag=!opened,distance=..2]
tp @s ~ ~-3 ~
function mainlobby:setting/gear/menu/1
