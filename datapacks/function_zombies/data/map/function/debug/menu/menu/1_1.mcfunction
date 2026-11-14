# 由 工具/gen_debug_gun_menu.py 生成；gen_replay_guns.py 复用同一排版。
function map:debug/menu/menu/clearchat
tellraw @s [{translate:zb.debug.menu.tellraw.0}]
tellraw @s [{translate:zb.debug.menu.tellraw.1}]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.clear","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/clear"}},\
    ]

# BEGIN REPLAY GUN MENU

# 常规枪械
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.pistol","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:pistol,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatepistol,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.practicegun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:practicegun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatepracticegun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rifle","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:rifle,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterifle,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.sniper","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:sniper,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatesniper,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.shotgun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:shotgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateshotgun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.doubleshotgun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:doubleshotgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatedoubleshotgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatedoubleshotgunii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatedoubleshotguniii,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.magnum","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:magnum,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatemagnum,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.machinegun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:machinegun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatemachinegun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rocketlauncher","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:rocketlauncher,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterocketlauncher,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.golddigger","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:golddigger,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimategolddigger,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimategolddiggerii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimategolddiggeriii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iv","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimategolddiggeriv,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.v","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimategolddiggerv,type:\"range/gun\"}"}},\
    ]

# 特殊枪械
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.soaker","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:soaker,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatesoaker,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.airgun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:airgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateairgun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.eldergun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:eldergun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateeldergun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.musicgun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:musicgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatemusicgun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.snowballcannon","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:snowballcannon,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatesnowballcannon,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.zapper","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:zapper,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatezapper,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.flamethrower","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:flamethrower,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateflamethrower,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.ashesflamethrower","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ashesflamethrower,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateashesflamethrower,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.soulflamethrower","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:soulflamethrower,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatesoulflamethrower,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.aurora","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:aurora,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateaurora,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.lament","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:lament,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimatelament,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.coppergun"},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.coppergun_default","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:coppergun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.coppergun_exposed","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:exposedcoppergun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.coppergun_weathered","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:weatheredcoppergun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.coppergun_oxidized","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:oxidizedcoppergun,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.resonance","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:resonance,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.parallax","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:parallax,type:\"range/gun\"}"}},\
    ]

# 彩虹与四季
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rainbowrifle","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:rainbowrifle,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrifle,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrifleii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrifleiii,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rainbowsniper","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_rainbowsniper {item:rainbowsniper}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_rainbowsniper {item:ultimaterainbowsniper}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_rainbowsniper {item:ultimaterainbowsniperii}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_rainbowsniper {item:ultimaterainbowsniperiii}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rainbowshotgun","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:rainbowshotgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowshotgun,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowshotgunii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowshotguniii,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.rainbowrocketlauncher","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:rainbowrocketlauncher,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrocketlauncher,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.ii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrocketlauncherii,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.iii","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimaterainbowrocketlauncheriii,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.season_spring","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:season_spring,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateseason_spring,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.season_summer","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:season_summer,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateseason_summer,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.season_autumn","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:season_autumn,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateseason_autumn,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.season_winter","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:season_winter,type:\"range/gun\"}"}},\
    {"text":" "},\
    {"translate":"zb.debug.menu.tellraw.i","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:ultimateseason_winter,type:\"range/gun\"}"}},\
    ]

# 终极武器
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.blueprint","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:blueprint,type:\"range/gun\"}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.function"},\
    {"text":" "},\
    {"text":"[1000]","color":"white","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:1000}"}},\
    {"text":"[900]","color":"white","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:900}"}},\
    {"text":"[800]","color":"white","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:800}"}},\
    {"text":"[700]","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:700}"}},\
    {"text":"[600]","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:600}"}},\
    {"text":"[500]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:500}"}},\
    {"text":"[400]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:400}"}},\
    {"text":"[300]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:300}"}},\
    {"text":"[200]","color":"red","bold":true,"click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_function {threshold:200}"}},\
    ]
tellraw @s [\
    {"translate":"zb.debug.menu.tellraw.paradox","click_event":{"action":"run_command","command":"function map:debug/menu/trigger/get_weapon {item:paradox,type:\"range/gun\"}"}},\
    ]
# END REPLAY GUN MENU

tellraw @s [{translate:zb.debug.menu.tellraw.2}]
