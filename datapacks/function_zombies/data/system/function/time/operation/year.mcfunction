
function system:time/operation/if_leapyear
scoreboard players set able time 0
execute if score year3 time matches 1 if score time1 time matches 31622400.. run scoreboard players set able time 1
execute if score year3 time matches 0 if score time1 time matches 31536000.. run scoreboard players set able time 1
execute if score time2 time matches 1.. run scoreboard players set able time 1
execute if score able time matches 0 run return fail

execute if score year3 time matches 1 if score time1 time matches 31622400.. run scoreboard players remove time1 time 31622400
execute if score year3 time matches 0 if score time1 time matches 31536000.. run scoreboard players remove time1 time 31536000
execute if score time1 time matches ..0 run scoreboard players remove time2 time 1
execute if score time1 time matches ..0 run scoreboard players add time1 time 1000000000
scoreboard players add year time 1
function system:time/operation/year