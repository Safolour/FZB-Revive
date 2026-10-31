
function map:area/lab/reaction/fire/effect/extra/burn
function zombie:skill/nether/reaction/mob/crimson

execute store result storage zombie skill.damage double 0.1 run scoreboard players get fireskeleton zombie.skill.damage
function zombie:skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.crimson.fireskeleton,color:yellow}]
