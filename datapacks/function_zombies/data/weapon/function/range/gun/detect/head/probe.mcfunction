# 以被命中实体为 @s、命中点为执行位置、子弹方向为朝向：沿弹道向前 0~1 格（碰撞箱深度）每 0.125 格检查一次
execute positioned ^ ^ ^0 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.125 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.25 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.375 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.5 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.625 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.75 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^0.875 if function weapon:range/gun/detect/head/point run return 1
execute positioned ^ ^ ^1 if function weapon:range/gun/detect/head/point run return 1
return fail
