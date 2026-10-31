
tag @s add chosen
tag @s add if
execute on vehicle if entity @s[type=slime] run tag @n[type=item_display,tag=chosen] remove if
rotate @s ~30 ~
tag @s remove chosen
execute unless entity @s[tag=if] run return fail
kill @s