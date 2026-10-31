
#execute store result storage zombie skill.damage double 0.1 run scoreboard players get rainbowzombie.shotgun zombie.skill.damage
#function zombie:skill/rainbow/shotgun/damage0 with storage zombie skill
#data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.using",with:[{translate:zb.zombie.name.rainbowzombie},{translate:zb.zombie.name.rainbowshotgun}]}]

#scoreboard players operation damage health.damage_skill = rainbowzombie.shotgun zombie.skill.damage
#function player_stat:health/get_damage/skill/get_damage

execute store result storage zombie skill.damage double 0.1 run scoreboard players get rainbowzombie.shotgun zombie.skill.damage
execute store result storage zombie skill.damage0 double 0.1 run scoreboard players get rainbowzombie.shotgun0 zombie.skill.damage
function zombie:skill/rainbow/shotgun/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.using",with:[{translate:zb.zombie.name.rainbowzombie},{translate:zb.zombie.name.rainbowshotgun}]}]
