execute store result score @s health.health run data get entity @s Health 10
function player_stat:health/absorption/get
# Preserve sub-one health while Bookshelf's max-health clamp holds the displayed health at one.
execute unless score @s health.health matches 10 run tag @s remove firelord.p5.aura.floor
scoreboard players operation #eff health.operation = @s health.health
execute if entity @s[tag=firelord.p5.aura.floor] run scoreboard players operation #eff health.operation = @s fl.aura_hp
scoreboard players operation #eff health.operation += #abs health.operation
execute if score #eff health.operation matches ..5 run return run function zombie:skill/nether/firelord/p5/chase/aura_down
scoreboard players set #absdmg health.operation 5
scoreboard players operation #absdmg health.operation < #abs health.operation
scoreboard players set damage health.operation 5
scoreboard players operation damage health.operation -= #absdmg health.operation
scoreboard players operation #aura_next health.operation = @s health.health
execute if entity @s[tag=firelord.p5.aura.floor] run scoreboard players operation #aura_next health.operation = @s fl.aura_hp
scoreboard players operation #aura_next health.operation -= damage health.operation
execute if score #aura_next health.operation matches ..9 run scoreboard players operation @s fl.aura_hp = #aura_next health.operation
execute if score #aura_next health.operation matches ..9 run tag @s add firelord.p5.aura.floor
scoreboard players operation #sub100 health.operation = #absdmg health.operation
scoreboard players operation #sub100 health.operation *= 10 number
execute if score #absdmg health.operation matches 1.. run function player_stat:health/absorption/sub
execute if score damage health.operation matches 1 run function bs.health:add/health {points:-0.1}
execute if score damage health.operation matches 2 run function bs.health:add/health {points:-0.2}
execute if score damage health.operation matches 3 run function bs.health:add/health {points:-0.3}
execute if score damage health.operation matches 4 run function bs.health:add/health {points:-0.4}
execute if score damage health.operation matches 5 run function bs.health:add/health {points:-0.5}
