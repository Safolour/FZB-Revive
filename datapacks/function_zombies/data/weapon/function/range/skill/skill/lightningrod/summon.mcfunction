
scoreboard players operation @s weapon.use = uuid weapon.range.skill.lightningrod
execute anchored eyes run function weapon:range/skill/skill/lightningrod/summon0
scoreboard players set @s weapon.use 0

execute unless entity @s[scores={weapon.range.skill.lightningrod_timer=1..}] run tellraw @s [{translate:zb.item.skill.lightningrod.tellraw.2}]
execute unless entity @s[scores={weapon.range.skill.lightningrod_timer=1..}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0