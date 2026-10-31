# 每发子弹（或每个投射物每 tick）开始时调用一次：判断是否需要走特殊检测，并清空粗筛的跳过计数
scoreboard players set #hit_near_skip weapon.state 0
scoreboard players set #hit_near_special weapon.state 0
execute if score gun weapon.use matches 10010 run return run scoreboard players set #hit_near_special weapon.state 1
execute if score gun weapon.use matches 10025 run return run scoreboard players set #hit_near_special weapon.state 1
execute if entity @e[tag=hitable,tag=giantzombie,limit=1] run return run scoreboard players set #hit_near_special weapon.state 1
execute if entity @e[type=marker,tag=hitable,tag=skill.creation.rampart.shield,limit=1] run return run scoreboard players set #hit_near_special weapon.state 1
