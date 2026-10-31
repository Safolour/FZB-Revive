execute unless score tick zombie.observereye matches 1 run return fail

execute store result score mobcount zombie.observereye if entity @e[tag=mob]
execute if score stat zombie.observereye matches 0 if score mobcount zombie.observereye matches 4.. as @e[type=marker,tag=skill.observereye] run function zombie:skill/machine/observereye/active
execute if score stat zombie.observereye matches 1 if score mobcount zombie.observereye matches ..3 as @e[type=marker,tag=skill.observereye] run function zombie:skill/machine/observereye/deactive
