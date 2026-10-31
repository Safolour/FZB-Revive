
#function zombie:skill/nether/guardian/crimson/0/skill/fire/addcrimson
function zombie:skill/nether/guardian/warped/0/skill/fire/addwarped

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardian.shield zombie.skill.damage
function zombie:skill/nether/guardian/warped/0/skill/shield/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.warpedguardian",color:"#008b8b"}]
