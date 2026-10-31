# 普通僵尸头部（模型头部从 1.5 格开始）
# 执行位置在碰撞箱（水平外扩 3px）内，且下移 1.5 格后仍在碰撞箱内 ⇔ 位于碰撞箱底部 1.5 格以上
execute positioned ~-0.1875 ~-1 ~-0.1875 unless entity @s[dx=0,dy=0,dz=0] run return fail
execute positioned ~-0.8125 ~ ~-0.8125 unless entity @s[dx=0,dy=0,dz=0] run return fail
execute positioned ~ ~-1.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 unless entity @s[dx=0,dy=0,dz=0] run return fail
execute positioned ~ ~-1.5 ~ positioned ~-0.8125 ~ ~-0.8125 unless entity @s[dx=0,dy=0,dz=0] run return fail
return 1
