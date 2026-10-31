
scoreboard players remove @s[scores={perk.switch_cd=1..}] perk.switch_cd 1
function map:perk/inventory_check
execute if score @s perk.speed matches 1 run function map:perk/speed

# 本 tick 开枪/命中的次数（金钱丢失、灰烬子弹用）
scoreboard players set #shot perk 0
scoreboard players set #hit perk 0
execute if score @s weapon.gun_shot = @s weapon.gun_shot run function map:perk/shot_count
execute if score @s perk.gold_thrower matches 1 run function map:perk/gold_thrower
execute if score @s perk.ashes_bullet matches 1 run function map:perk/ashes_bullet
execute if score @s perk.absorptionconversion matches 1 run function map:perk/absorptionconversion
