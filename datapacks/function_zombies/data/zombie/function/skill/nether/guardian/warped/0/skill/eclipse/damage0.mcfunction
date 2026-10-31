
function zombie:skill/nether/guardian/warped/0/skill/fire/addwarped


#effect give @s slowness 2 1 false

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardian.eclipse.flame zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.eclipse",color:blue}]
