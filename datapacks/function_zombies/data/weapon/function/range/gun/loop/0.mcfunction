
scoreboard players reset no_target weapon.range
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
scoreboard players operation gun weapon.use = @s weapon.use
function weapon:range/gun/detect/hit_near_flags
# 磁吸子弹：射手有增益时子弹每一步检查附近目标（射手自己打 perk_magnet_self 标签排除）
scoreboard players set #magnet weapon.state 0
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run scoreboard players set #magnet weapon.state 1
execute if score #magnet weapon.state matches 1 run tag @p[scores={weapon.use=1..}] add perk_magnet_self
function weapon:range/gun/loop/0_0
tag @a[tag=perk_magnet_self] remove perk_magnet_self
