
trigger waitlobby.book_trigger
scoreboard players set @s waitlobby.book_trigger 0

stopsound @s
item replace entity @s enderchest.26 with air
effect clear @s
clear @s
effect give @s instant_health 1 5 true
effect give @s saturation infinite 0 true
xp set @s 0 points
xp set @s 0 levels
scoreboard players reset @s
tag @s remove debug
title @s reset
title @s actionbar {"text":""}
advancement revoke @s everything