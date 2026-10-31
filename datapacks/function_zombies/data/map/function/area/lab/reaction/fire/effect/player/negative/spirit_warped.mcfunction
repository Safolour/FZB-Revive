
effect give @s slowness 3 0 false
function map:area/lab/reaction/fire/effect/extra/rotation

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 60
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.crimson,color:"#dc143c"}]

#damage @s 6
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.crimson,color:"#dc143c"}]

function map:area/lab/reaction/fire/effect/extra/add/crimson

function map:area/lab/reaction/fire/effect/extra/particle/negative/crimson
