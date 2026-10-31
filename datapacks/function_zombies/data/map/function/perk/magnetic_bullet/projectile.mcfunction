# 磁吸子弹：投射物（雪球炮的雪块、小雪球）每 tick 由 weapon:range/gun/loop/1 调用（执行者 = 投射物，射手发射时有磁吸子弹才带 magnet 标签）
# 3 格内有可命中的敌人时，把速度改成朝它身体中部、大小 0.6 格/tick，返回 1；没有就照常弹跳，返回失败
execute unless entity @e[tag=hitable,type=!player,type=!marker,distance=..3,scores={zombie.health=1..}] run return fail
execute as @e[tag=hitable,type=!player,type=!marker,distance=..3,scores={zombie.health=1..},sort=nearest,limit=1] at @s run function map:perk/magnetic_bullet/aim
execute facing entity @n[type=marker,tag=perk_magnet_aim] feet positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.6 {Tags:["perk_magnet_vec"]}
data modify entity @s Motion set from entity @n[type=marker,tag=perk_magnet_vec] Pos
kill @e[type=marker,tag=perk_magnet_aim]
kill @e[type=marker,tag=perk_magnet_vec]
return 1
