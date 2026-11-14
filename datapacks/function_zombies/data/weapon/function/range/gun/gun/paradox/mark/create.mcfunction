$execute if entity @e[type=marker,tag=paradox.mark,scores={weapon.pd_owner=$(owner)},nbt={data:{target:$(target)}}] run return 0
$execute at @s run summon marker ~ ~ ~ {Tags:["gun","paradox.mark","paradox.new_mark"],data:{target:$(target)}}
$scoreboard players set @e[type=marker,tag=paradox.new_mark,limit=1] weapon.pd_owner $(owner)
tag @e[type=marker,tag=paradox.new_mark] remove paradox.new_mark
