
tag @s add chosen
tag @s add if
execute on vehicle if entity @s[type=item] run tag @n[tag=chosen] remove if
tag @s remove chosen
rotate @s[type=item_display] ~ ~10
execute unless entity @s[tag=if] run return fail
function system:death