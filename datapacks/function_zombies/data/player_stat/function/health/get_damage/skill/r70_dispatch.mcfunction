# Preserve the previous non-R70 dispatch, including R40 attribution.
execute if entity @s[tag=r70.damage.pending] run return run function player_stat:health/get_damage/skill/r70_pending
function player_stat:health/get_damage/skill/r40_pending
