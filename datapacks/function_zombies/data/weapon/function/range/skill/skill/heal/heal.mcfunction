
# 治疗不使用射线。清除旧版遗留的 weapon.use，避免后续技能把治疗者当作施法者。
scoreboard players set @s weapon.use 0
tag @s add skill.heal.caster
scoreboard players set heal_self weapon.state 0
scoreboard players set heal_other weapon.state 0
execute store result storage weapon root.heal.heal_self int 1 run scoreboard players get heal_self weapon.range.skill.heal
execute store result storage weapon root.heal.heal_other int 1 run scoreboard players get heal_other weapon.range.skill.heal
execute if function weapon:range/skill/skill/heal/needs_heal run function weapon:range/skill/skill/heal/heal_self with storage weapon root.heal
execute as @a[scores={stat.player=1},distance=..5,tag=!skill.heal.caster,gamemode=!spectator] if function weapon:range/skill/skill/heal/needs_heal run function weapon:range/skill/skill/heal/heal_other with storage weapon root.heal
tag @s remove skill.heal.caster
data remove storage weapon root

execute if score heal_other weapon.state matches 0 if score heal_self weapon.state matches 0 run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if score heal_other weapon.state matches 0 if score heal_self weapon.state matches 0 run return run tellraw @s [{translate:zb.item.skill.heal.tellraw.7}]
# 提交了有效治疗才进入冷却；快速恢复：30 → 20 秒。
scoreboard players operation @s weapon.range.skill.heal_timer = cooldown weapon.range.skill.heal
execute if score @s perk.fast_regeneration matches 1 run scoreboard players operation @s weapon.range.skill.heal_timer = cooldown_perk weapon.range.skill.heal

execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 0 run tellraw @s [{translate:zb.item.skill.heal.tellraw.0,with:[{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 0 if score heal_other weapon.state matches 1 run tellraw @s [{translate:zb.item.skill.heal.tellraw.1,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 0 if score heal_other weapon.state matches 2.. run tellraw @s [{translate:zb.item.skill.heal.tellraw.2,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 1 run tellraw @s [{translate:zb.item.skill.heal.tellraw.3,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
execute if score heal_self weapon.state matches 1 if score heal_other weapon.state matches 2.. run tellraw @s [{translate:zb.item.skill.heal.tellraw.4,with:[{score:{name:heal_other,objective:weapon.state},color:green},{translate:zb.item.skill.tellraw.heal.0}]}]
