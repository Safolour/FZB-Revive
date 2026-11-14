scoreboard players add @s origin.age 0
scoreboard players add @s origin.y 0
execute if entity @s[tag=titan.eclipse.shell.0] run scoreboard players add @s origin.age 2
execute if entity @s[tag=titan.eclipse.shell.0] run scoreboard players add @s origin.y 2
execute if entity @s[tag=titan.eclipse.shell.1] run scoreboard players add @s origin.age 3
execute if entity @s[tag=titan.eclipse.shell.1] run scoreboard players remove @s origin.y 3
execute if entity @s[tag=titan.eclipse.shell.2] run scoreboard players add @s origin.age 4
execute if entity @s[tag=titan.eclipse.shell.2] run scoreboard players add @s origin.y 5
execute if entity @s[tag=titan.eclipse.shell.3] run scoreboard players add @s origin.age 5
execute if entity @s[tag=titan.eclipse.shell.3] run scoreboard players remove @s origin.y 6
execute if score @s origin.age matches 180.. run scoreboard players remove @s origin.age 360
execute if score @s origin.y matches 90.. run scoreboard players remove @s origin.y 180
execute if score @s origin.y matches ..-91 run scoreboard players add @s origin.y 180
execute store result storage zombie:titan.eclipse rotation.yaw int 1 run scoreboard players get @s origin.age
execute store result storage zombie:titan.eclipse rotation.pitch int 1 run scoreboard players get @s origin.y
function zombie:skill/creation/titan/eclipse/rotate0 with storage zombie:titan.eclipse rotation
