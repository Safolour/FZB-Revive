
#playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 2
execute unless score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]

function zombie:skill/nether/guardian/crimson/0/skill/fire/addcrimson

execute store result storage zombie skill.damage double 0.1 run scoreboard players get crimsonguardian.laser zombie.skill.damage
function zombie:skill/nether/guardian/crimson/0/skill/shockwave/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.crimsonguardian",color:"#dc143c"}]
