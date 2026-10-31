
$execute store result score @s weapon.gun_$(gun)_slot run data get entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(gun)"]}}}].Slot

$execute store result score @s weapon.range.skill.$(gun)_slot run data get entity @s Inventory[{components:{"minecraft:custom_data":{tag:["$(gun)"]}}}].Slot
