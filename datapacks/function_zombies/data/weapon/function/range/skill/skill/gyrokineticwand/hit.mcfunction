
scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.gyrokineticwand_timer = cooldown weapon.range.skill.gyrokineticwand
# 引力子弹：冷却 30 → 15 秒
execute if entity @p[scores={weapon.use=1..,perk.gravity_bullet=1}] run scoreboard players operation @p[scores={weapon.use=1..}] weapon.range.skill.gyrokineticwand_timer = cooldown_perk weapon.range.skill.gyrokineticwand

execute positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["skill","gyrokineticwand_pulling"]}