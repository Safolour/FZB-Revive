
function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]

tellraw @s [\
    {translate:zb.debug.menu.tellraw.clear,click_event:{action:run_command,command:"function map:debug/menu/trigger/clear"}},\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.knife,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:knife,type:\"melee\"}"}},\
    {text:" "},{translate:zb.debug.menu.tellraw.i,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:ultimateknife,type:\"melee\"}"}},\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.puncher,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:puncher,type:\"melee\"}"}},\
    {text:" "},{translate:zb.debug.menu.tellraw.i,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:ultimatepuncher,type:\"melee\"}"}},\
    ]
tellraw @s [{translate:zb.debug.menu.tellraw.2}]

