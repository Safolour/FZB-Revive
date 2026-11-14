
tag @s add chosen
scoreboard players set @s weapon.damage_dealt 1
data modify storage weapon root.item set from entity @s SelectedItem.components."minecraft:custom_data"
function player_stat:attack/get_stat with storage weapon root.item
execute as @e[tag=hitable,nbt={HurtTime:10s}] if function player_stat:attack/hit0 run function player_stat:attack/damage with storage weapon root.item
effect give @s weakness 1 200 true
scoreboard players set @s stat.attack.damage_dealt 0
scoreboard players set @s weapon.use 0
tag @s remove chosen
data remove storage weapon root
