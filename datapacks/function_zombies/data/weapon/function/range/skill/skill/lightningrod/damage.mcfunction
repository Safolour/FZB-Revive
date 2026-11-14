
execute if entity @s[tag=p5.raytarget] run scoreboard players add #p5_ray_count weapon.state 1
execute unless entity @s[tag=p5.raytarget] run scoreboard players add enemy_count weapon.state 1
scoreboard players operation damage weapon.state = damage weapon.range.skill.lightningrod
scoreboard players operation gold weapon.state = gold weapon.range.skill.lightningrod
function weapon:range/skill/skill/damage/damage
tag @s remove hit