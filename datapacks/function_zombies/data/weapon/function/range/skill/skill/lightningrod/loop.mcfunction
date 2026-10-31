
tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players set range weapon.range 0
scoreboard players operation max_range weapon.range = range weapon.range.skill.lightningrod
scoreboard players operation @s weapon.use = uuid weapon.range.skill.lightningrod
function weapon:range/skill/loop/0