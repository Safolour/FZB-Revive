
execute unless score @s waitlobby.book_trigger = @s waitlobby.book_trigger run return run scoreboard players set @s waitlobby.book_trigger 0
execute if score @s waitlobby.book_trigger matches 1 run function map:waitlobby/item/introduce_book {slot:0}
scoreboard players set @s waitlobby.book_trigger 0
