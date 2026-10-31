
function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]

tellraw @s [\
    {translate:zb.debug.menu.tellraw.clear,click_event:{action:run_command,command:"function inventory:inventory/perk_clear"}},\
    {text:" "},{translate:zb.debug.menu.tellraw.back,click_event:{action:run_command,command:"function map:debug/menu/menu/1"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.extra_health},\
    {translate:zb.debug.menu.tellraw.i,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:1}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.ii,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:2}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.iii,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:3}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.iv,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:4}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.v,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:5}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.vi,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:6}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.vii,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:7}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.viii,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:8}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.ix,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:9}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.x,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_extra_health {lv:10}"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.fast_revive,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:fast_revive}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.quick_fire,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:quick_fire}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.speed,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:speed}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.frozen_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:frozen_bullet}"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.gold_thrower,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:gold_thrower}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.double_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:double_bullet}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.fast_regeneration,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:fast_regeneration}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.gravity_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:gravity_bullet}"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.flame_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:flame_bullet}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.ashes_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:ashes_bullet}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.neutralization_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:neutralization_bullet}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.lightning_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:lightning_bullet}"}}\
    ]
tellraw @s [\
    {translate:zb.debug.menu.tellraw.selfexplosion,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:selfexplosion}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.no_knockback,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:no_knockback}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.absorptionconversion,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:absorptionconversion}"}},{text:" "},\
    {translate:zb.debug.menu.tellraw.magnetic_bullet,click_event:{action:run_command,command:"function map:debug/menu/trigger/get_perk {perk:magnetic_bullet}"}}\
    ]
# 加成：资源包里没有调试菜单的加成键，按钮直接用各加成的名字（zb.powerup.<id>.3），点了在脚下生成并马上拾取
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
