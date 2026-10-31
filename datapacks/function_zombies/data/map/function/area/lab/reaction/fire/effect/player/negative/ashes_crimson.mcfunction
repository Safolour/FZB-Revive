
function map:area/lab/reaction/fire/effect/extra/burn
effect give @s wither 3 0 false

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 40
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.spirit,color:"#d9fcff"}]

#damage @s 4
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.spirit,color:"#d9fcff"}]

function map:area/lab/reaction/fire/effect/extra/add/spirit

function map:area/lab/reaction/fire/effect/extra/particle/negative/spirit
