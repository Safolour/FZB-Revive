function zombie:skill/creation/origin/sword/fall_spray
execute at @s run tp @s ~ ~-2 ~
execute store result score @s origin.y run data get entity @s Pos[1] 100
execute if score @s origin.y matches ..9210 at @s run function zombie:skill/creation/origin/sword/impact
