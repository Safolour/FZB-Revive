
#execute if score type map matches 3 if entity @s[scores={stat.player=10}] unless entity @s[x=19,y=23,z=101,dx=25,dy=13,dz=27] run return run function map:game/tp_back

function map:game/scoreboard/tick
