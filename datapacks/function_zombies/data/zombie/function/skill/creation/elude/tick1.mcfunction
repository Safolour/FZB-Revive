
tag @s add chosen
tag @s add if
particle crit ~ ~0.25 ~ 0 0 0 0 1 force @a[scores={particle=0}]
scoreboard players add @s zombie.creation.elude 1
execute on passengers if entity @s run tag @n[tag=chosen] remove if
scoreboard players set @s[tag=if] zombie.creation.elude 447
#execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{x:{max:0.125,min:-0.125},y:{max:0.125,min:-0.125},z:{max:0.125,min:-0.125}},stepping_on:{block:{}}}} run scoreboard players set @s zombie.creation.elude 447
execute if predicate {condition:"entity_properties",entity:"this",predicate:{"movement":{},stepping_on:{block:{}}}} run scoreboard players set @s zombie.creation.elude 447
execute as @a[scores={stat.player=1},distance=..1] run function zombie:skill/creation/elude/damage
tag @s remove chosen
execute unless score @s zombie.creation.elude matches 200.. run return fail
function system:death
particle block{block_state:stone} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
particle item{item:iron_shovel} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
playsound entity.zombie.attack_iron_door record @a ~ ~ ~ 1.5 1
