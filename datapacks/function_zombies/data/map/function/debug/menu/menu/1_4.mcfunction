function map:debug/menu/menu/clearchat

tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]

tellraw @s [{translate:zb.debug.menu.tellraw.back,click_event:{action:run_command,command:"function map:debug/menu/menu/1"}}]

# Keep the original admin drop-spawn actions; this page is separate from Perk.
tellraw @s [\
    {translate:zb.powerup.maxammo.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/maxammo"}},{text:" "},\
    {translate:zb.powerup.instakill.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/instakill"}},{text:" "},\
    {translate:zb.powerup.doublegold.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/doublegold"}},{text:" "},\
    {translate:zb.powerup.triplegold.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/triplegold"}},{text:" "},\
    {translate:zb.powerup.quadruplegold.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/quadruplegold"}}\
    ]
tellraw @s [\
    {translate:zb.powerup.bonusgold.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/bonusgold"}},{text:" "},\
    {translate:zb.powerup.shoppingspree.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/shoppingspree"}},{text:" "},\
    {translate:zb.powerup.carpenter.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/carpenter"}},{text:" "},\
    {translate:zb.powerup.purification.3,click_event:{action:run_command,command:"execute at @s run function map:powerup/summon/purification"}}\
    ]

tellraw @s [{translate:zb.debug.menu.tellraw.2}]
