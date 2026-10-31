# 被激光扫到的目标执行（执行位置 = 射线当前点）
tag @s remove gethit
execute if entity @s[tag=laser_done] run return fail
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return run function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
tag @s add laser_done
# 打中一个敌人：射手手上这把毁灭激光的释放阈值 -2（容量固定 1000）
execute as @a[tag=laser_shooter,limit=1] run function weapon:range/gun/gun/function/laser/cap_hit
# 毁灭激光走自定义伤害链，不会触发普通弹丸的 weapon/function/hit，在这里补记一发普通充能
execute as @a[tag=laser_shooter,limit=1] run scoreboard players add @s weapon.function_charge 1
execute as @a[tag=laser_shooter,limit=1] if score @s weapon.function_charge matches 1001.. run scoreboard players set @s weapon.function_charge 1000
execute if entity @s[tag=hit1] run tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_function
scoreboard players operation damage weapon.state = laser_damage weapon.gun_function
scoreboard players set gold weapon.state 100
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
