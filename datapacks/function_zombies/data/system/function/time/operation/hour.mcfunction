
execute unless score time1 time matches 3600.. run return fail
scoreboard players remove time1 time 3600

scoreboard players add hour time 1
function system:time/operation/hour
