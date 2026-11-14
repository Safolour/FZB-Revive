# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
scoreboard players operation #owner gear.owner = @s gear.owner
tag @a[tag=setting.gear_owner] remove setting.gear_owner
execute as @a[scores={system.room=2},distance=..9] if score @s uuid = #owner gear.owner run tag @s add setting.gear_owner
execute unless entity @a[tag=setting.gear_owner] if entity @s[tag=setting.gear_refund_pending] run return 0
execute unless entity @a[tag=setting.gear_owner] run return run function mainlobby:setting/gear/kill
execute if entity @s[tag=setting.gear_refund_pending] if score @s gear.count matches 1.. run scoreboard players remove @s gear.count 1
execute if entity @s[tag=setting.gear_refund_pending] if score @s gear.count matches 1.. run return 0
execute if entity @s[tag=setting.gear_refund_pending] run return run function mainlobby:setting/gear/render
execute if score @s gear.menu matches 1 run return run function mainlobby:setting/gear/check/1
execute if score @s gear.menu matches 2 run return run function mainlobby:setting/gear/check/2
execute if score @s gear.menu matches 3 run return run function mainlobby:setting/gear/check/3
execute if score @s gear.menu matches 4 run return run function mainlobby:setting/gear/check/4
execute if score @s gear.menu matches 10 run return run function mainlobby:setting/gear/check/10
execute if score @s gear.menu matches 11 run return run function mainlobby:setting/gear/check/11
execute if score @s gear.menu matches 13 run return run function mainlobby:setting/gear/check/13
execute if score @s gear.menu matches 14 run return run function mainlobby:setting/gear/check/14
execute if score @s gear.menu matches 100 run return run function mainlobby:setting/gear/check/100
execute if score @s gear.menu matches 101 run return run function mainlobby:setting/gear/check/101
execute if score @s gear.menu matches 102 run return run function mainlobby:setting/gear/check/102
execute if score @s gear.menu matches 103 run return run function mainlobby:setting/gear/check/103
execute if score @s gear.menu matches 104 run return run function mainlobby:setting/gear/check/104
execute if score @s gear.menu matches 105 run return run function mainlobby:setting/gear/check/105
execute if score @s gear.menu matches 106 run return run function mainlobby:setting/gear/check/106
execute if score @s gear.menu matches 107 run return run function mainlobby:setting/gear/check/107
execute if score @s gear.menu matches 108 run return run function mainlobby:setting/gear/check/108
execute if score @s gear.menu matches 109 run return run function mainlobby:setting/gear/check/109
execute if score @s gear.menu matches 110 run return run function mainlobby:setting/gear/check/110
execute if score @s gear.menu matches 111 run return run function mainlobby:setting/gear/check/111
execute if score @s gear.menu matches 112 run return run function mainlobby:setting/gear/check/112
execute if score @s gear.menu matches 113 run return run function mainlobby:setting/gear/check/113
execute if score @s gear.menu matches 114 run return run function mainlobby:setting/gear/check/114
execute if score @s gear.menu matches 115 run return run function mainlobby:setting/gear/check/115
execute if score @s gear.menu matches 116 run return run function mainlobby:setting/gear/check/116
execute if score @s gear.menu matches 117 run return run function mainlobby:setting/gear/check/117
execute if score @s gear.menu matches 118 run return run function mainlobby:setting/gear/check/118
execute if score @s gear.menu matches 119 run return run function mainlobby:setting/gear/check/119
execute if score @s gear.menu matches 120 run return run function mainlobby:setting/gear/check/120
execute if score @s gear.menu matches 121 run return run function mainlobby:setting/gear/check/121
execute if score @s gear.menu matches 122 run return run function mainlobby:setting/gear/check/122
execute if score @s gear.menu matches 123 run return run function mainlobby:setting/gear/check/123
execute if score @s gear.menu matches 124 run return run function mainlobby:setting/gear/check/124
execute if score @s gear.menu matches 125 run return run function mainlobby:setting/gear/check/125
execute if score @s gear.menu matches 126 run return run function mainlobby:setting/gear/check/126
execute if score @s gear.menu matches 127 run return run function mainlobby:setting/gear/check/127
execute if score @s gear.menu matches 128 run return run function mainlobby:setting/gear/check/128
execute if score @s gear.menu matches 129 run return run function mainlobby:setting/gear/check/129
execute if score @s gear.menu matches 130 run return run function mainlobby:setting/gear/check/130
execute if score @s gear.menu matches 131 run return run function mainlobby:setting/gear/check/131
execute if score @s gear.menu matches 132 run return run function mainlobby:setting/gear/check/132
execute if score @s gear.menu matches 133 run return run function mainlobby:setting/gear/check/133
