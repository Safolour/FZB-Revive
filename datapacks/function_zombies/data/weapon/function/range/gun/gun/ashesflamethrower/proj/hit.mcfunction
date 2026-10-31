# 被检测到的目标执行（执行位置 = 弹丸当前位置）
tag @s remove gethit
execute if score @s weapon.ashes_last = #ashes_id weapon.state run return fail
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return run function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
scoreboard players operation @s weapon.ashes_last = #ashes_id weapon.state
scoreboard players remove @e[type=marker,tag=ashes_proj,tag=chosen,limit=1] weapon.ashes_pierce 1
execute if score gun weapon.use matches 10045 run function weapon:range/gun/gun/ashesflamethrower/hit
execute if score gun weapon.use matches 10046 run function weapon:range/gun/gun/ultimateashesflamethrower/hit
function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
