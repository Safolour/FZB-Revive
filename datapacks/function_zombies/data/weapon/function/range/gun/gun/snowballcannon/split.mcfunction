
# 雪块爆炸（执行者 = 雪块，位置 = 爆炸点）：向四周放出 split 个小雪球，继承射手、磁吸
scoreboard players operation #split weapon.state = split weapon.gun_snowballcannon
scoreboard players operation #owner weapon.state = @s weapon.gun_uuid
scoreboard players set #magnet weapon.state 0
execute if entity @s[tag=magnet] run scoreboard players set #magnet weapon.state 1
playsound minecraft:entity.zombie_villager.cure record @a ~ ~ ~ 1 1
function weapon:range/gun/gun/snowballcannon/split0
