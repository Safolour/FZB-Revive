scoreboard players operation gold weapon.state = gold perk.lightning_bullet
function mainlobby:setting/powerup/select
execute if score #doublegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 2 number
execute if score #triplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 3 number
execute if score #quadruplegold setting.pu matches 1.. run scoreboard players operation gold weapon.state *= 4 number
tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]},{translate:zb.item.perk.lightning_bullet.gold}]
scoreboard players operation @s gold += gold weapon.state
