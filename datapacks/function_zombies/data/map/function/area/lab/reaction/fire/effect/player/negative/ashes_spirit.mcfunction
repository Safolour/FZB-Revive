
effect give @s wither 3 0 false
function map:area/lab/reaction/fire/effect/extra/rotation

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 50
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.warped,color:"#008b8b"}]


#damage @s 5
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.warped,color:"#008b8b"}]

function map:area/lab/reaction/fire/effect/extra/add/warped

function map:area/lab/reaction/fire/effect/extra/particle/negative/warped
