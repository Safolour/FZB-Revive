
scoreboard players set @s inventory 2
clear @s
function weapon:melee/_get_item/replace/knife {slot:0}
function weapon:range/gun/_get_item/replace/pistol {slot:1}
function map:shop/_get_item/weapon_slot {slot:2,count:2}
function map:shop/_get_item/weapon_slot {slot:3,count:3}
function map:shop/_get_item/skill_slot {slot:4}
function map:shop/_get_item/perk_slot {slot:6,count:1}
function map:shop/_get_item/perk_slot {slot:7,count:2}
function map:shop/_get_item/perk_slot {slot:8,count:3}
scoreboard players set @s inventory 1
function inventory:item_store0