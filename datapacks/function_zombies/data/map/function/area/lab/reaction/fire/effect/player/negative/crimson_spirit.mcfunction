
function map:area/lab/reaction/fire/effect/extra/burn
function map:area/lab/reaction/fire/effect/extra/rotation

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 10
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.neutral,color:"#ffffff"}]

#damage @s 1
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.neutral,color:"#ffffff"}]

function map:area/lab/reaction/fire/effect/extra/add/player_negative
