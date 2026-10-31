execute if entity @s[tag=weapon.res_request] at @s run function weapon:range/gun/gun/resonance/skill/request
execute if entity @s[tag=weapon.res_cast] at @s run function weapon:range/gun/gun/resonance/skill/tick
scoreboard players set @s[scores={interaction.right_click=1..}] weapon.rightclick 1
scoreboard players set @s[scores={interaction.left_click=1..}] weapon.leftclick 1

# 手持冲锋枪（含终极强化）移速 +50%（录像里的 movement_speed 修饰符 0.5 add_multiplied_base）；倒地、换枪就去掉
function weapon:range/skill/skill/echo/machinegun_speed
# 函数毁灭激光蓄力（按 Q 后 28 tick；倒地/切槽位会中断）
execute if entity @s[tag=weapon.laser_charge] run function weapon:range/gun/gun/function/laser/charge/tick
execute unless score @s stat.player matches 2..3 run function weapon:melee/tick
execute unless score @s stat.player matches 2..3 run function weapon:range/tick

scoreboard players set @s weapon.leftclick 0
scoreboard players set @s weapon.rightclick 0
scoreboard players set @s weapon.damage_dealt 0
