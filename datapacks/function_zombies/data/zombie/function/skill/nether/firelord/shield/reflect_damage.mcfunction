# The Fire Lord shield backlash uses common skill damage but bypasses neutralization.
tag @s add firelord.special.shield_bypass
scoreboard players set damage health.damage_skill 30
function player_stat:health/get_damage/skill/immediate_damage
tag @s remove firelord.special.shield_bypass
