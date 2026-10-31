
effect give @s wither 4 1 false
function zombie:skill/nether/reaction/mob/ashes

execute store result storage zombie skill.damage double 0.1 run scoreboard players get ashwizard.death zombie.skill.damage
function zombie:skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.ashes.ashesskeleton,color:dark_red}]
