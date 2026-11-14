
scoreboard players operation d health.operation = damage health.damage_skill
scoreboard players set damage health.damage_skill 0
execute unless entity @s[tag=firelord.special.shield_bypass] if score round game.state matches 40 at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/firelord/p2/safe_player_damage
function player_stat:health/get_damage/skill/operation
# 金血先扣：倒地判定按 红血 + 金血，吃不完的部分再扣红血
function player_stat:health/absorption/get
scoreboard players operation #eff health.operation = @s health.health
scoreboard players operation #eff health.operation += #abs health.operation
execute if score damage0 health.operation >= #eff health.operation at @s run return run function player_stat:revive/down
scoreboard players operation #absdmg health.operation = damage health.operation
scoreboard players operation #absdmg health.operation < #abs health.operation
scoreboard players operation damage health.operation -= #absdmg health.operation
scoreboard players operation #sub100 health.operation = #absdmg health.operation
scoreboard players operation #sub100 health.operation *= 10 number
execute if score #absdmg health.operation matches 1.. run function player_stat:health/absorption/sub
execute store result storage game root.health.damage float 0.1 run scoreboard players get damage health.operation
function player_stat:health/get_damage/skill/damage0 with storage game root.health
data remove storage game root

data remove storage revive root.down
