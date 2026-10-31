
scoreboard players add @s zombie.lamda.laser 1

#scoreboard players operation mod zombie.lamda.laser = @s zombie.lamda.laser
#scoreboard players set 4 zombie.lamda.laser 4
#scoreboard players operation mod zombie.lamda.laser %= 4 zombie.lamda.laser

#execute if score mod zombie.lamda.laser matches 0 run function zombie:skill/machine/lamda/skill/laser/0/particle
function zombie:skill/machine/lamda/skill/laser/0/particle

#scoreboard players reset 4 zombie.lamda.laser
#scoreboard players reset mod zombie.lamda.laser

tp @s ^ ^ ^1

execute if score @s zombie.lamda.laser matches 1.. run kill @s
