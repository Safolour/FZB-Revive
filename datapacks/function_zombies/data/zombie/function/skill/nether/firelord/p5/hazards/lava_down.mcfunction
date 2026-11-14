data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.lava"}]
function player_stat:revive/down
data remove storage revive root.down.target0
