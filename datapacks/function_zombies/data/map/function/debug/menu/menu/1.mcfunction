
function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]

tellraw @s [\
    {translate:zb.debug.menu.tellraw.melee,click_event:{action:run_command,command:"function map:debug/menu/menu/1_0"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.gun,click_event:{action:run_command,command:"function map:debug/menu/menu/1_1"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.skill,click_event:{action:run_command,command:"function map:debug/menu/menu/1_2"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.perk,click_event:{action:run_command,command:"function map:debug/menu/menu/1_3"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.gold,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_gold"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.reset,click_event:{action:run_command,command:"function map:debug/menu/trigger/inventory_reset"}}\
    ]

tellraw @s [{translate:zb.debug.menu.tellraw.2}]
