scoreboard players set damage health.damage_skill 47770
execute if score damage health.damage_skill > @s health.damage_skill run tag @s add r40.source.next.tnt
function player_stat:health/get_damage/skill/get_damage
execute if entity @s[tag=r40.source.next.tnt] run tag @s add r40.source.tnt
tag @s remove r40.source.next.tnt
