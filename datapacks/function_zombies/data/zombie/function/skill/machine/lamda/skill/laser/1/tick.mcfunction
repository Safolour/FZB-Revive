
scoreboard players add @s zombie.lamda.laser 1

execute if score @s zombie.lamda.laser matches 3 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:1.2f,1:-0.6f}
execute if score @s zombie.lamda.laser matches 6 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:1.4f,1:-0.7f}
execute if score @s zombie.lamda.laser matches 9 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:1.6f,1:-0.8f}
execute if score @s zombie.lamda.laser matches 12 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:1.8f,1:-0.9f}
execute if score @s zombie.lamda.laser matches 15 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:2.0f,1:-1.0f}
execute if score @s zombie.lamda.laser matches 18 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:2.2f,1:-1.1f}
execute if score @s zombie.lamda.laser matches 21 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:2.4f,1:-1.2f}
execute if score @s zombie.lamda.laser matches 24 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:2.6f,1:-1.3f}
execute if score @s zombie.lamda.laser matches 27 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:2.8f,1:-1.4f}
execute if score @s zombie.lamda.laser matches 30 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:3.0f,1:-1.5f}
execute if score @s zombie.lamda.laser matches 33 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:3.2f,1:-1.6f}
execute if score @s zombie.lamda.laser matches 36 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:3.4f,1:-1.7f}
execute if score @s zombie.lamda.laser matches 39 run function zombie:skill/machine/lamda/skill/laser/1/scale {0:3.6f,1:-1.8f}

scoreboard players operation match zombie.lamda.match = @s zombie.lamda.match
execute as @e[type=zombie,tag=skill.lamda] if score @s zombie.lamda.match = match zombie.lamda.match run tag @s add target
execute unless entity @n[type=zombie,tag=target] run kill @s
tag @n[type=zombie,tag=target] remove target
scoreboard players reset match zombie.lamda.match

execute if score @s zombie.lamda.laser matches 40.. run kill @s
