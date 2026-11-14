scoreboard players set damage health.damage_skill 60
data modify storage revive root.down.target0 set value {translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.firelord"},{translate:"zb.zombie.name.firelord.fire"}]}
function player_stat:health/get_damage/skill/immediate_damage
data remove storage revive root.down.target0
