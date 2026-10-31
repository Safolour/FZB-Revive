scoreboard players operation punch weapon.state = punch weapon.gun_season_spring
scoreboard players operation damage weapon.state = damage weapon.gun_season_spring
scoreboard players operation gold weapon.state = gold weapon.gun_season_spring
execute store result score #essence weapon.state run random value 1..100
execute if score #essence weapon.state matches ..8 at @s run function weapon:range/gun/gun/season_spring/essence_drop
function weapon:range/gun/damage/damage
tag @s remove hit
