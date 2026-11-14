# 射手执行：扣 cost 点生命（至少留 1 点，不够就不扣也不给），自己和 5 格内队友加伤害吸收
execute store result score #ashes_hp weapon.state run data get entity @s Health 10
scoreboard players operation #ashes_hp weapon.state -= cost weapon.ashes
execute if score #ashes_hp weapon.state matches ..9 run return fail
execute store result storage weapon ashes.points float -0.1 run scoreboard players get cost weapon.ashes
function bs.health:add/health with storage weapon ashes
data remove storage weapon ashes
# 记住本次产生金血的枪型；溢出只存入接收者背包内同型号的武器
scoreboard players set #ashes_kind weapon.state 1
execute if items entity @s weapon *[custom_data~{tag:["ultimateashesflamethrower"]}] run scoreboard players set #ashes_kind weapon.state 2
# 金血按射手是否带灰烬子弹定：没有灰烬子弹时 2 点（1 生命换 2 金血）；带着灰烬子弹时 4 点（灰烬子弹另扣 2 点生命，合计 −3）
scoreboard players operation #ashes_add weapon.state = absorb weapon.ashes
execute if score @s perk.ashes_bullet matches 1.. run scoreboard players operation #ashes_add weapon.state *= 2 number
tag @s add ashes_giver
# 训练与实战沿用同一金血结算，只把接收者限定在射手所在环境。
execute if score @s system.room matches 2 as @a[scores={system.room=2},distance=..5] at @s run function weapon:range/gun/gun/ashesflamethrower/absorb/add
execute if score @s system.room matches 4 as @a[scores={system.room=4},distance=..5] at @s run function weapon:range/gun/gun/ashesflamethrower/absorb/add
tag @s remove ashes_giver
