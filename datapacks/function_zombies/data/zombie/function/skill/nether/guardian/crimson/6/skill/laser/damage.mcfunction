
#playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 2
particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]

function zombie:skill/nether/guardian/crimson/0/skill/fire/addcrimson

execute store result storage zombie skill.damage double 0.1 run scoreboard players get crimsonguardian.laser zombie.skill.damage
function zombie:skill/nether/guardian/crimson/0/skill/shockwave/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.crimsonguardian",color:"#dc143c"}]
