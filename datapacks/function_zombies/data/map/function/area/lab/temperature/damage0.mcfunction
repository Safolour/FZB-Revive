
playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 2 0
execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.2 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle lava ~ ~1 ~ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~1 ~ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle lava ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
effect give @s slowness 2 2 false

execute unless entity @s[scores={stat.player=1}] run return 0

# 81°C 以上：每秒 1 HP，绕过护甲及减伤。
execute store result score @s health.health run data get entity @s Health 10
function player_stat:health/absorption/get
scoreboard players operation #eff health.operation = @s health.health
scoreboard players operation #eff health.operation += #abs health.operation
execute if score #eff health.operation matches ..10 at @s run return run function player_stat:revive/down
scoreboard players set #absdmg health.operation 10
scoreboard players operation #absdmg health.operation < #abs health.operation
scoreboard players set damage health.operation 10
scoreboard players operation damage health.operation -= #absdmg health.operation
scoreboard players operation #sub100 health.operation = #absdmg health.operation
scoreboard players operation #sub100 health.operation *= 10 number
execute if score #absdmg health.operation matches 1.. run function player_stat:health/absorption/sub
execute store result storage game root.health.damage float 0.1 run scoreboard players get damage health.operation
function player_stat:health/get_damage/skill/damage0 with storage game root.health
data remove storage game root
