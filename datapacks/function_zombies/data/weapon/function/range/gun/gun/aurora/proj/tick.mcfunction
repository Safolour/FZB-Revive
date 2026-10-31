scoreboard players operation #uuid weapon.gun_uuid = @s weapon.gun_uuid
execute as @a if score @s uuid = #uuid weapon.gun_uuid run tag @s add aurora_shooter
execute unless entity @a[tag=aurora_shooter,limit=1] run return run kill @s
scoreboard players operation #aurora_previous weapon.state = @a[tag=aurora_shooter,limit=1] weapon.use
scoreboard players operation @a[tag=aurora_shooter,limit=1] weapon.use = @s weapon.use
scoreboard players operation gun weapon.use = @s weapon.use
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
tag @s add chosen
tag @s add aurora_active
scoreboard players set @s weapon.aurora_stop 0
# 半格为一次碰撞检测，保留不足半格的小数，避免速度取整损失。
scoreboard players operation @s weapon.aurora_remainder += @s weapon.aurora_speed
scoreboard players set #aurora_half weapon.state 500
scoreboard players operation @s weapon.aurora_steps = @s weapon.aurora_remainder
scoreboard players operation @s weapon.aurora_steps /= #aurora_half weapon.state
scoreboard players operation @s weapon.aurora_remainder %= #aurora_half weapon.state
function weapon:range/gun/gun/aurora/proj/step
tag @s remove chosen
tag @s remove aurora_active
scoreboard players operation @a[tag=aurora_shooter,limit=1] weapon.use = #aurora_previous weapon.state
tag @a[tag=aurora_shooter] remove aurora_shooter
execute if score @s weapon.aurora_stop matches 1 run return run kill @s
execute if score @s weapon.aurora_dist >= @s weapon.range run kill @s
