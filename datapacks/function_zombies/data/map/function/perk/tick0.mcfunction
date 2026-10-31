
# 敌人每 tick：火焰子弹的燃烧
execute if score @s perk.flame_time matches 1.. run function map:perk/flame_bullet/burn
