tag @s remove titan.sword.cast
item replace entity @s weapon.mainhand with minecraft:air
execute unless entity @s[tag=titan.scatter.cast] run data merge entity @s {Glowing:0b}
execute unless entity @s[tag=titan.scatter.cast] run team join mob @s
effect clear @s minecraft:slowness
