
execute unless score time1 time matches 60.. run return fail
scoreboard players remove time1 time 60

scoreboard players add minute time 1
function system:time/operation/minute
