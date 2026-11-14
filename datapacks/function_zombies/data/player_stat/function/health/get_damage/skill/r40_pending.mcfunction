execute if entity @s[tag=r40.source.tnt] run data modify storage revive root.down.target0 set value {translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.neutralization"},{translate:"zb.zombie.name.neutralization.tnt"}]}
function player_stat:health/get_damage/skill/damage
data remove storage revive root.down.target0
tag @s remove r40.source.circle
tag @s remove r40.source.ghastfire
tag @s remove r40.source.tnt
