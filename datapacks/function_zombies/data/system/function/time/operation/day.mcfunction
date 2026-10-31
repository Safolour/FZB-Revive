
execute unless score time1 time matches 86400.. run return fail
scoreboard players remove time1 time 86400
scoreboard players add day time 1

function system:time/operation/day