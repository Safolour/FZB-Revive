
# 调试菜单：额外生命值直接升到 lv 级（宏参数 lv，1–10）；已经不低于这个等级就不动
$scoreboard players set #want perk $(lv)
scoreboard players set #prev perk -1
function map:debug/menu/trigger/get_extra_health0
