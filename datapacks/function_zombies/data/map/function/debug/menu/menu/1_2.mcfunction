function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]

tellraw @s [\
    {translate:zb.debug.menu.tellraw.clear,click_event:{action:run_command,command:"function map:debug/menu/trigger/clear"}},\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.lightningrod,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:lightningrod,type:\"range/skill\"}"}},\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.heal,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:heal,type:\"range/skill\"}"}},\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.gyrokineticwand,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_weapon {item:gyrokineticwand,type:\"range/skill\"}"}},\
    ]

# BEGIN ECHO MENU
tellraw @s [{translate:"zb.debug.menu.tellraw.echo",click_event:{action:"run_command",command:"function map:debug/menu/trigger/get_weapon {item:echo,type:\"range/skill\"}"}}]
# END ECHO MENU

tellraw @s [{translate:zb.debug.menu.tellraw.2}]
