effect give @s blindness 1 0 true
effect give @s slowness 1 0 false

function zombie:skill/nether/reaction/mob/spirit

execute store result storage zombie skill.damage double 0.1 run scoreboard players get spiritghast.fireball zombie.skill.damage
function zombie:skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.spirit.ghast,color:dark_aqua}]
