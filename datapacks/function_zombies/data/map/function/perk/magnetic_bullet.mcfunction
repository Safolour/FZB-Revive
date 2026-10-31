# 磁吸子弹（magnetic_bullet）：射手有本增益时，即时命中子弹每前进一步由 weapon:range/gun/loop/0_0 调用（执行者 = 子弹）
# 子弹飞到可命中实体 3 格内才转向它（瞄身体中部，magnetic_bullet/aim），不是一出膛就锁定；可命中的队友（例如能打队友的情况）也会被锁定，射手自己除外
execute unless entity @e[tag=hitable,tag=!perk_magnet_self,type=!marker,distance=..3] run return fail
execute as @e[tag=hitable,tag=!perk_magnet_self,type=!marker,distance=..3,sort=nearest,limit=1] at @s run function map:perk/magnetic_bullet/aim
execute facing entity @n[type=marker,tag=perk_magnet_aim] feet run tp @s ~ ~ ~ ~ ~
kill @e[type=marker,tag=perk_magnet_aim]
# 转向后前方可能有实体，不能沿用粗筛的跳过计数
scoreboard players set #hit_near_skip weapon.state 0
