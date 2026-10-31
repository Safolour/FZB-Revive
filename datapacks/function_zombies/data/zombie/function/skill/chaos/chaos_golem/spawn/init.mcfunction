
function zombie:skill/chaos/chaos_golem/spawn/slime
execute at @s positioned ~ ~ ~ rotated 0 0 run function animated_java:chaos_golem/summon {args:{}}

scoreboard players add @e[type=item_display,tag=aj.chaos_golem.root] zombie.chaos.chaos_golem.match 1
scoreboard players add @e[type=zombie,tag=skill.chaosgolem] zombie.chaos.chaos_golem.match 1
scoreboard players add @e[type=slime,tag=skill.chaosgolem] zombie.chaos.chaos_golem.match 1

execute if entity @s[x=296,y=99,z=124,dx=8,dy=4,dz=7] run tag @s add skill.chaosgolem.spawn
