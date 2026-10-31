effect give @s blindness 1 0 true
effect give @s slowness 1 0 false

particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]

function zombie:skill/nether/reaction/mob/spirit

execute store result storage zombie skill.damage double 0.1 run scoreboard players get annihilate zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.spirit.annihilate,color:black}]
