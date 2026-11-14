tag @s remove firelord.p5.aura.floor
data modify storage revive root.down.target set value {translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.neutralization"},{translate:"zb.zombie.name.neutralization.area"}]}
data modify storage revive root.down.target0 set from storage revive root.down.target
function player_stat:revive/down
