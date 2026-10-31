
$data modify entity @s CustomName set value [{text:"§c$(0).$(1)s§r"}]
$execute as @p[tag=chosen] at @s run function player_stat:revive/time1 {0:$(0),1:$(1)}