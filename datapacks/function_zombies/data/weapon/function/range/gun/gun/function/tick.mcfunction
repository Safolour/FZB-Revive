# 按 Q 释放毁灭激光（inventory:throw_item 打的标签）
execute if entity @s[tag=weapon.function_laser] run function weapon:range/gun/gun/function/laser/try

scoreboard players remove @s[scores={weapon.gun_function_rate=0..}] weapon.gun_function_rate 1
scoreboard players remove @s[scores={weapon.gun_function_reload=0..}] weapon.gun_function_reload 1

execute if entity @s[scores={weapon.gun_function_reload=0..}] run function weapon:range/gun/slot/reload {gun:"function"}
execute if entity @s[scores={weapon.gun_function_reload=0}] run function weapon:range/gun/gun/function/refill

execute unless items entity @s weapon *[custom_data~{tag:["function"]}] run return fail
execute unless score @s weapon.gun_hold0 = uuid weapon.gun_function run function weapon:range/gun/slot/xpmax
scoreboard players operation @s weapon.gun_hold = uuid weapon.gun_function

execute if entity @s[scores={weapon.gun_function_rate=0..,weapon.gun_function_reload=-1}] run function weapon:range/gun/slot/xp_point {gun:"function"}
execute if entity @s[scores={weapon.gun_function_rate=0}] run function weapon:range/gun/slot/xp_lv {gun:"function"}

execute if entity @s[scores={weapon.gun_function_reload=1..},tag=!weapon.laser_charge] run function weapon:range/gun/message/reloading
execute unless entity @s[scores={weapon.gun_function_reload=1..}] run function weapon:range/gun/gun/function/laser/actionbar

# 蓄力毁灭激光时不能开枪（录像 59 次蓄力里一发都没有）
execute if entity @s[scores={weapon.rightclick=1..},tag=!weapon.laser_charge] run function weapon:range/gun/gun/function/rightclick
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/gun/gun/function/leftclick

scoreboard players operation @s[scores={weapon.gun_function_ammo=0,weapon.gun_noammo_cd=-1}] weapon.gun_noammo_cd = cd weapon.gun_noammo_cd

execute if entity @s[scores={weapon.gun_function_ammo=0}] run return run function weapon:range/gun/message/outofammo

execute if score @s weapon.gun_hold0 = uuid weapon.gun_function run return fail
execute if entity @s[scores={weapon.gun_function_reload=-1}] run function weapon:range/gun/slot/count {gun:"function"}
function weapon:range/gun/slot/xp_lv {gun:"function"}