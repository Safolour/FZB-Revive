
scoreboard players add @s weapon.range.skill.gyrokineticwand_timer 1

rotate @s ~5 ~
summon marker ~ ~ ~ {UUID:[I;1,1,1,1]}
scoreboard players set distance weapon.state 60
scoreboard players operation distance weapon.state -= @s weapon.range.skill.gyrokineticwand_timer
execute store result entity @s data.particle.distance float 0.167 run scoreboard players get distance weapon.state
scoreboard players remove distance weapon.state 2
execute store result entity @s data.particle.distance0 float 0.167 run scoreboard players get distance weapon.state
function weapon:range/skill/skill/gyrokineticwand/particle/0 with entity @s data.particle
kill 00000001-0000-0001-0000-000100000001

function weapon:range/skill/skill/gyrokineticwand/sound

execute if score @s weapon.range.skill.gyrokineticwand_timer matches ..60 run return fail
kill @s