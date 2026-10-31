
scoreboard players set @s area.showcase 0
kill @e[type=item,tag=area.lab.showcase.display] 
execute as @n[type=armor_stand,tag=area.lab.showcase.display,tag=text] run data modify entity @s CustomNameVisible set value 0b
execute as @n[type=armor_stand,tag=area.lab.showcase.display,tag=text] run data modify entity @s CustomName set value ''
data remove storage map:showcase item
