effect give @s blindness 1 0 true
effect give @s slowness 2 1 true

function zombie:skill/nether/reaction/mob/crimson

execute store result storage zombie skill.damage double 0.1 run scoreboard players get meteor zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.ashes.meteor,color:"#c8aebb"}]
