
data modify entity @s CustomNameVisible set value 1b
$scoreboard players set @s path.way_point $(way_point)
$data modify entity @s CustomName set value '$(way_point)'