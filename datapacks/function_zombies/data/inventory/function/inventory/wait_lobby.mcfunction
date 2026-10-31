
scoreboard players set @s inventory 2
clear @s
function map:waitlobby/item/introduce_book {slot:0}
function map:waitlobby/item/quit {slot:8}
function weapon:range/gun/_get_item/replace/practicegun {slot:1}
scoreboard players set @s inventory 1
function inventory:item_store0