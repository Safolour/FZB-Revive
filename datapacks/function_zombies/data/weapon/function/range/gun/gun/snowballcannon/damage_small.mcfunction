
# 宏参数 gold = gold / gold_crit，crit = 1 时算暴击
scoreboard players operation @s weapon.gun_snowballcannon_time = time weapon.gun_snowballcannon_time
scoreboard players operation uuid weapon.gun_uuid = @n[tag=chosen,tag=projectile] weapon.gun_uuid
execute as @a if score @s uuid = uuid weapon.gun_uuid run scoreboard players operation @s weapon.use = uuid weapon.gun_snowballcannon
scoreboard players reset uuid weapon.gun_uuid
$scoreboard players set #crit weapon.state $(crit)
execute if score #crit weapon.state matches 1 run tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players set punch weapon.state 100
scoreboard players operation damage weapon.state = damage_small weapon.gun_snowballcannon
$scoreboard players operation gold weapon.state = $(gold) weapon.gun_snowballcannon
scoreboard players operation gold weapon.state /= 2 number
scoreboard players set #hit_counted weapon.state 1
scoreboard players set #head_counted weapon.state 1
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
playsound block.snow.hit ambient @a ~ ~ ~ 1 1 0
scoreboard players set @p[scores={weapon.use=1..}] weapon.use 0
