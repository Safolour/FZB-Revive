

scoreboard players operation @s health.heal_speed = basic health.heal_speed
trigger waitlobby.book_trigger
scoreboard players set @s waitlobby.book_trigger 0
title @s reset
gamemode adventure @s
scoreboard players set @s stat.player 1
scoreboard players set @s system.room 1
scoreboard players set @s interaction.state 0
scoreboard players set @s inventory.lock 1
scoreboard players set @s inventory 2
clear @s
scoreboard players set @s inventory 1
team leave @s
team join mainlobby.player @s
scoreboard objectives setdisplay sidebar.team.white lobby.scoreboard
xp set @s 447010 levels
xp set @s 4022931 points
xp set @s 0 levels
execute if score month system.stat matches 3..5 run tp @s 161 101 660 0 0
execute if score month system.stat matches 6..8 run tp @s 482 101 660 0 0

execute if score month system.stat matches 9..11 run tp @s 803 101 646 0 0

execute if score month system.stat matches 12 run tp @s 1113 101 671 -135 0
execute if score month system.stat matches 1..2 run tp @s 1113 101 671 -135 0

title @s reset
title @s times 1 2 10
title @s title {"text":"\uF000"}
