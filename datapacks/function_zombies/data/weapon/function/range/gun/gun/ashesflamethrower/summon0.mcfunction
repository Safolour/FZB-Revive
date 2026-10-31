# 每发 1~3 颗弹丸（lore「霰弹数量：1-3」），各自随机偏移
scoreboard players add @s weapon.gun_shot 1
execute store result score #ashes_n weapon.state run random value 1..3
scoreboard players operation #ashes_speed weapon.state = speed weapon.gun_ashesflamethrower
scoreboard players operation #ashes_range weapon.state = range weapon.gun_ashesflamethrower
scoreboard players operation #ashes_pierce weapon.state = pierce weapon.gun_ashesflamethrower
scoreboard players operation #ashes_gun weapon.state = uuid weapon.gun_ashesflamethrower
function weapon:range/gun/gun/ashesflamethrower/proj/summon
