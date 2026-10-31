
execute if entity @s[tag=res_skill_owner] run tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]},{translate:zb.item.gun.tellraw.resonance.0}]
execute if entity @s[tag=laser_shooter,tag=!res_skill_owner] run tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]},{translate:zb.item.gun.tellraw.function.0}]
execute unless entity @s[tag=res_skill_owner] unless entity @s[tag=laser_shooter] if entity @s[tag=crit_hit] run tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]},{translate:zb.item.gold.crit_hit}]
execute unless entity @s[tag=res_skill_owner] unless entity @s[tag=laser_shooter] unless entity @s[tag=crit_hit] run tellraw @s [{translate:zb.item.gold,with:[{"score":{"name":"gold","objective":"weapon.state"},"color":"gold"}]}]
scoreboard players operation @s gold += gold weapon.state
