
function zombie:skill/machine/lamda/spawn/slime
execute at @s positioned ~ ~ ~ rotated 0 0 run function animated_java:lamda/summon {args:{}}

scoreboard players add @e[type=item_display,tag=aj.lamda.root] zombie.lamda.match 1
scoreboard players add @e[type=zombie,tag=skill.lamda] zombie.lamda.match 1
scoreboard players add @e[type=slime,tag=skill.lamda] zombie.lamda.match 1

execute if entity @s[x=296,y=99,z=124,dx=8,dy=4,dz=7] run tag @s add skill.lamda.spawn
