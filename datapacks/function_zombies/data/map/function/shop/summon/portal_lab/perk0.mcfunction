# Scheduled repairs have no entity context; resolve the surviving marker first.
execute unless entity @s[type=marker,tag=shop,tag=perk] run return run execute in minecraft:overworld as @e[type=marker,tag=shop,tag=perk,limit=1] at @s run function map:shop/summon/portal_lab/perk0

execute as @e[type=!marker,tag=shop,tag=perk,tag=!text,tag=!opened,tag=!display] run function map:shop/interact/minecart_kill

# Called at the surviving perk marker, which already follows the active arena.
# Rebuild the enclosing left-click shell before its replacement minecart.
function map:shop/summon/portal_lab/perk_reload_capture
summon chest_minecart ~1 ~ ~ {Tags:["shop","perk","minecart","height0","precedence","chosen"],Rotation:[90,0],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}
execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
team join collision @e[tag=shop,tag=perk]
tag @e[tag=chosen] remove chosen
