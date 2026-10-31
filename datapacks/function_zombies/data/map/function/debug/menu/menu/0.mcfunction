
function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.round_freeze,click_event:{action:run_command,command:"function _:debug/round/round_freeze"}},\
    {text:" "},\
    {translate:zb.debug.menu.tellraw.round_restart,click_event:{action:run_command,command:"function _:debug/round/round_restart"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.mob_kill,click_event:{action:run_command,command:"function _:debug/mob_kill"}},\
    {text:" "},\
    {translate:zb.debug.menu.tellraw.get_item,click_event:{action:run_command,command:"function map:debug/menu/menu/1"}},\
    {text:" "},\
    {translate:zb.debug.menu.tellraw.ammo,click_event:{action:run_command,command:"function weapon:allammo"}}\
    ]
tellraw @s [{translate:zb.debug.menu.tellraw.2}]

