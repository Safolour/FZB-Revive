
scoreboard players set @s system.room 2
function mainlobby:setting/environment/enter
function mainlobby:interaction/off
tp @s 6 -59 832 -90 0
xp set @s 447010 levels
xp set @s 4022931 points
xp set @s 0 levels

title @s reset
title @s times 1 2 10
title @s title {"text":"\uF000"}
