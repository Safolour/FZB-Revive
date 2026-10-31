tp @s ~ ~ ~ facing ^ ^ ^1
tag @s add chosen
scoreboard players set #res_steps weapon.state 0
function weapon:range/gun/gun/resonance/skill/ray
tag @s remove chosen
