# Retain existing max-pending/HurtTime semantics; no new timer.
scoreboard players add @s health.damage_skill 0
tag @s remove r70.damage.newsource
execute if score damage health.damage_skill > @s health.damage_skill run tag @s add r70.damage.newsource
function player_stat:health/get_damage/skill/get_damage
$execute if entity @s[tag=r70.damage.newsource] run tag @s add r70.source.$(source)
execute if entity @s[tag=r70.damage.newsource] run tag @s add r70.damage.pending
tag @s remove r70.damage.newsource
