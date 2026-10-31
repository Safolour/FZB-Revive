# 投射物这一 tick 之后才按 Motion 移动，先查当前位置，再查飞行方向前方 0.5、1 格
function weapon:range/gun/detect/hit_near_flags
function weapon:range/gun/detect/hit_near
execute unless entity @e[tag=gethit,limit=1] run function weapon:range/gun/loop/1_detect
