
scoreboard players set @s inventory 2
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
function map:shop/_get_item/perk_slot {slot:6,count:1}
function map:shop/_get_item/perk_slot {slot:7,count:2}
function map:shop/_get_item/perk_slot {slot:8,count:3}
scoreboard players set @s inventory 1
function inventory:item_store0