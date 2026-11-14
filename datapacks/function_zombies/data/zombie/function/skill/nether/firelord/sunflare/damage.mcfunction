# Submit through the common skill-damage path; only the shield interception is bypassed.
tag @s add firelord.special.shield_bypass
scoreboard players set damage health.damage_skill 10
data modify storage revive root.down.target0 set value {translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.firelord"},{translate:"zb.zombie.name.firelord.sunflare"}]}
function player_stat:health/get_damage/skill/immediate_damage
data remove storage revive root.down.target0
tag @s remove firelord.special.shield_bypass
