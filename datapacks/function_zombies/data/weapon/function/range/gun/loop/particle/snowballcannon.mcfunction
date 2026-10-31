# 小雪球：只有白色拖尾（8 个，和雪块一样浓），和雪块的白青混色区分开
execute if entity @s[tag=small] run return run particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.125 0.125 0.125 0 8 force @a[scores={particle=0..1}]
# 雪块：白色和青色在同一个范围里随机散开，混在一起，看不出分界线
particle snowflake ~ ~ ~ 0 0 0 0.025 0 force @a[scores={particle=0..1}]
particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.125 0.125 0.125 0 4 force @a[scores={particle=0}]
particle dust{color:[0,1,1],scale:1} ~ ~ ~ 0.125 0.125 0.125 0 4 force @a[scores={particle=0}]
