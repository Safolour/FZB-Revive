scoreboard players set #echo_copied weapon.state 0
$execute unless data storage weapon:echo players.p$(id).components run return 0
scoreboard players set @s inventory 2
item replace block 1 -60 1 container.26 with air
$data modify block 1 -60 1 Items append from storage weapon:echo players.p$(id)
# The snapshot is a source gun; convert its stack in the staging container.
$data modify block 1 -60 1 Items[{components:{"minecraft:custom_data":{gun:"$(gun)"}}}].Slot set value 26b
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_name" set value {translate:"zb.item.skill.echo.name.0",with:[]}
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_name".with append from storage weapon:echo players.p$(id).components."minecraft:custom_name"
data remove block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".gun
data remove block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".ammo
data remove block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".upgrade
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".tag set value ["skill","echo","clear","range"]
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".skill set value "echo"
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".echo set value "$(gun)"
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".slot set value $(slot)
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" prepend value {text:""}
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" prepend value {translate:"zb.item.skill.echo.lore.1"}
data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:lore" prepend value {translate:"zb.item.skill.echo.lore.0"}
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
scoreboard players set @s inventory 1
scoreboard players set #echo_copied weapon.state 1
