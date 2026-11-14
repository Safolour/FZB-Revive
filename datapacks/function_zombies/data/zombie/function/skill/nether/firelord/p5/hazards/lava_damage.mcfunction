# 0.2 health per tick while touching a column, also above its surface.
execute store result score @s health.health run data get entity @s Health 10
function player_stat:health/absorption/get
scoreboard players operation #eff health.operation = @s health.health
scoreboard players operation #eff health.operation += #abs health.operation
execute if score #eff health.operation matches ..2 run return run function zombie:skill/nether/firelord/p5/hazards/lava_down
scoreboard players set #absdmg health.operation 2
scoreboard players operation #absdmg health.operation < #abs health.operation
scoreboard players set damage health.operation 2
scoreboard players operation damage health.operation -= #absdmg health.operation
scoreboard players operation #sub100 health.operation = #absdmg health.operation
scoreboard players operation #sub100 health.operation *= 10 number
execute if score #absdmg health.operation matches 1.. run function player_stat:health/absorption/sub
execute if score damage health.operation matches 1 run function bs.health:add/health {points:-0.1}
execute if score damage health.operation matches 2 run function bs.health:add/health {points:-0.2}
