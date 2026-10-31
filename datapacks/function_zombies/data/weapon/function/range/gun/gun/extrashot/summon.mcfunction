$execute unless score extrashot weapon.gun_$(gun) matches 1.. run return 0

$execute at @s run summon marker ~ ~ ~ {Tags:["chosen","gun","extrashot"],data:{gun:$(gun)}}
scoreboard players operation uuid weapon.gun_uuid = @s uuid
scoreboard players operation @n[type=marker,tag=chosen] weapon.gun_uuid = uuid weapon.gun_uuid
$scoreboard players operation @n[type=marker,tag=chosen] weapon.gun_extrashot = extrashot weapon.gun_$(gun)
$scoreboard players operation @n[type=marker,tag=chosen] weapon.gun_extrashot_time = extrashot_time weapon.gun_$(gun)
tag @e[type=marker,tag=chosen] remove chosen
