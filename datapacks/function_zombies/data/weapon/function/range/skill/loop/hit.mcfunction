
tag @s remove gethit
scoreboard players operation range weapon.range = max_range weapon.range

execute if score gun weapon.use matches 30001 run function weapon:range/skill/skill/lightningrod/hit

tag @s remove hit
tag @s remove hit1
tag @s remove hit2