function zombie:skill/nether/reaction/mob/warped

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardianzombie.laser zombie.skill.damage
function zombie:skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nether.warped.guardianzombie,color:"#008b8b"}]

scoreboard players add @s zombie.nether.warped.warpedguardianzombie.count 1
