
tag @s add chosen
scoreboard players set heal_self weapon.state 0
scoreboard players set heal_other weapon.state 0
execute unless score @s stat.health = @s stat.max_health run scoreboard players set heal_self weapon.state 1
execute as @a[scores={stat.player=1},distance=..5,tag=!chosen] unless score @s stat.health = @s stat.max_health run scoreboard players set heal_other weapon.state 1
tag @s remove chosen
execute if score heal_other weapon.state matches 0 if score heal_self weapon.state matches 0 run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score heal_other weapon.state matches 0 if score heal_self weapon.state matches 0 run return run tellraw @s [{translate:zb.item.skill.heal.tellraw.7}]

tag @s add chosen
scoreboard players operation @s weapon.use = uuid weapon.range.skill.heal
scoreboard players operation @s weapon.range.skill.heal_timer = cooldown weapon.range.skill.heal
# 快速恢复：冷却 30 → 20 秒
execute if score @s perk.fast_regeneration matches 1 run scoreboard players operation @s weapon.range.skill.heal_timer = cooldown_perk weapon.range.skill.heal
scoreboard players set heal_self weapon.state 0
scoreboard players set heal_other weapon.state 0
execute store result storage weapon root.heal.heal_self int 1 run scoreboard players get heal_self weapon.range.skill.heal
execute store result storage weapon root.heal.heal_other int 1 run scoreboard players get heal_other weapon.range.skill.heal
execute unless score @s stat.health = @s stat.max_health run function weapon:range/skill/skill/heal/heal_self with storage weapon root.heal
execute as @a[scores={stat.player=1},distance=..5,tag=!chosen] unless score @s stat.health = @s stat.max_health run function weapon:range/skill/skill/heal/heal_other with storage weapon root.heal
data remove storage weapon root

execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 0 run tellraw @s [{translate:zb.item.skill.heal.tellraw.0,with:[{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 0 if score heal_other weapon.state matches 1 run tellraw @s [{translate:zb.item.skill.heal.tellraw.1,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 0 if score heal_other weapon.state matches 2.. run tellraw @s [{translate:zb.item.skill.heal.tellraw.2,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 1 run tellraw @s [{translate:zb.item.skill.heal.tellraw.3,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 2.. run tellraw @s [{translate:zb.item.skill.heal.tellraw.4,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
tag @s remove chosen