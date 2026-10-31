# 弹丸执行（at 弹丸）：这一 tick 走 weapon.ashes_step 步
# 命中检测、伤害都按 @p[scores={weapon.use=1..}] 找射手，所以这期间临时给射手设上 weapon.use
scoreboard players operation #uuid weapon.gun_uuid = @s weapon.gun_uuid
execute as @a if score @s uuid = #uuid weapon.gun_uuid run tag @s add ashes_shooter
execute unless entity @a[tag=ashes_shooter,limit=1] run return run kill @s
scoreboard players operation #ashes_prev weapon.state = @a[tag=ashes_shooter,limit=1] weapon.use
scoreboard players operation @a[tag=ashes_shooter,limit=1] weapon.use = @s weapon.use
scoreboard players operation gun weapon.use = @s weapon.use
scoreboard players operation #ashes_id weapon.state = @s weapon.ashes_id
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
function weapon:range/gun/detect/hit_near_flags
# punch（击退方向）找 @e[tag=chosen]
tag @s add chosen
scoreboard players operation #ashes_steps weapon.state = @s weapon.ashes_step
function weapon:range/gun/gun/ashesflamethrower/proj/step
tag @s remove chosen
scoreboard players operation @a[tag=ashes_shooter,limit=1] weapon.use = #ashes_prev weapon.state
tag @a[tag=ashes_shooter] remove ashes_shooter
execute if score @s weapon.range matches ..0 run kill @s
