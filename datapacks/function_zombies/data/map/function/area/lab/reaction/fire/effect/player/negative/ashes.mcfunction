
effect give @s wither 3 0 false

execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 20
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.ashes,color:"#2f4f4f"}]

#damage @s 2
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.ashes,color:"#2f4f4f"}]

function map:area/lab/reaction/fire/effect/extra/particle/negative/ashes
