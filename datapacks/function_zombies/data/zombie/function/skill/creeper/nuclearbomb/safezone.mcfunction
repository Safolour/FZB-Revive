
function zombie:skill/creeper/nuclearbomb/clear0

#294 91 139   306 91 139   294 91 161   306 91 161
summon marker 294 91 139 {Tags:["mob.skill","skill.nuclearbomb.safezone","chosen"]}
summon marker 306 91 139 {Tags:["mob.skill","skill.nuclearbomb.safezone","chosen"]}
summon marker 294 91 161 {Tags:["mob.skill","skill.nuclearbomb.safezone","chosen"]}
summon marker 306 91 161 {Tags:["mob.skill","skill.nuclearbomb.safezone","chosen"]}

tag @e[type=marker,tag=chosen,sort=furthest,limit=1] add target
kill @e[type=marker,tag=skill.nuclearbomb.safezone,tag=!target]

execute store result storage zombie nuclearbomb.x int 1 run data get entity @n[type=marker,tag=target] Pos[0]
execute store result storage zombie nuclearbomb.y int 1 run data get entity @n[type=marker,tag=target] Pos[1]
execute store result storage zombie nuclearbomb.z int 1 run data get entity @n[type=marker,tag=target] Pos[2]

execute as @n[type=marker,tag=target] at @s run summon item_display ~ ~ ~ {Tags:["skill.nuclearbomb.safezone"],item:{id:diamond,components:{item_model:"custom:safezone"}},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[44,400,44],translation:[-22,200,-22]}}

function zombie:skill/creeper/nuclearbomb/tellraw/1 with storage zombie nuclearbomb

data remove storage zombie nuclearbomb
tag @e[type=marker,tag=chosen] remove chosen
tag @e[type=marker,tag=target] remove target
