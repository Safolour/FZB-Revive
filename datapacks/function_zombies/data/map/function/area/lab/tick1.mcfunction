#mob
execute if entity @s[tag=mob,tag=firezb] run function map:area/lab/reaction/fire/tick1
execute if entity @s[tag=fire_reaction] run function map:area/lab/reaction/fire/tick2