
#playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 2
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=0}]

function zombie:skill/nether/guardian/warped/0/skill/fire/addwarped

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardian.laser zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.warpedguardian",color:"#008b8b"}]
