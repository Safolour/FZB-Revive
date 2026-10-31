
execute as @e[tag=shop,tag=refill] run function system:death
summon interaction 312 93 132 {width:1,height:1,Tags:["shop","interactable","refill","item","chosen"],Rotation:[-90.0f,0.0f]}

scoreboard players operation price shop.price = refill shop.price
execute as @n[type=interaction,tag=chosen] at @s positioned ^ ^0.5 ^ run function map:shop/summon/text {name:refill,item:player_head}
execute as @n[type=interaction,tag=chosen] at @s run data modify entity @n[type=item] Item.components."minecraft:profile" set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjAxMDE4YzExZGY2YzNkZTczY2E5OWNkMTgxZmNiNWFlMDlhN2QwYWY3M2NiNWMxMGY5ZTY4MzE0MzM3NTFlIn19fQ=="}]}