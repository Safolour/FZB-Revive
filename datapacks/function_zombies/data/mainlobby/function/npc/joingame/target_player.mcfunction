
tag @s add chosen
execute as @a at @s if score @s uuid = @n[type=chest_minecart,tag=chosen] lobby.uuid run tag @s add target
tag @s remove chosen