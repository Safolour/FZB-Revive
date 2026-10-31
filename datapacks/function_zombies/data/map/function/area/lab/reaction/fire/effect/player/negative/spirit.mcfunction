
function map:area/lab/reaction/fire/effect/extra/rotation

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 30
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.spirit,color:"#d9fcff"}]

#damage @s 3
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.spirit,color:"#d9fcff"}]

function map:area/lab/reaction/fire/effect/extra/particle/negative/spirit
