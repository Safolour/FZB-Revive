# 被磁吸转向的投射物（loop/1）：把 Motion 放到 0 0 0 附近的标记上，从原点朝它就是飞行方向，再回到投射物位置检测
summon marker 0.0 0.0 0.0 {Tags:["fzb_motion_vec"]}
data modify entity @n[type=marker,tag=fzb_motion_vec] Pos set from entity @s Motion
execute positioned 0.0 0.0 0.0 facing entity @n[type=marker,tag=fzb_motion_vec] feet positioned as @s run function weapon:range/gun/loop/1_detect_motion0
kill @e[type=marker,tag=fzb_motion_vec]
