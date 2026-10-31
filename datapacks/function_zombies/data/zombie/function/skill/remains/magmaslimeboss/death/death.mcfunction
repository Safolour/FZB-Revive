tag @s add skill.magmaslimeboss.death

summon lightning_bolt
summon lightning_bolt

particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 3 3 force @a[scores={particle=0}]

playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0

execute store result storage zombie size int 1 run scoreboard players get @s zombie.remains.magmaslimeboss.size
data remove storage zombie size

scoreboard players operation size zombie.number = @s zombie.remains.magmaslimeboss.size

scoreboard players set 4 zombie.number 4
scoreboard players operation delta zombie.number = size zombie.number
scoreboard players operation delta zombie.number /= 4 zombie.number

scoreboard players operation count zombie.number = size zombie.number
scoreboard players operation count0 zombie.number = count zombie.number
scoreboard players operation count zombie.number *= count0 zombie.number
scoreboard players operation count zombie.number *= count0 zombie.number

execute if score count zombie.number matches 5000.. run scoreboard players set count zombie.number 5000
execute if score count zombie.number matches ..1 run scoreboard players set count zombie.number 1

execute store result storage zombie delta int 1 run scoreboard players get delta zombie.number
execute store result storage zombie count int 1 run scoreboard players get count zombie.number

scoreboard players reset size zombie.number
scoreboard players reset 4 zombie.number
scoreboard players reset delta zombie.number
scoreboard players reset count zombie.number
scoreboard players reset count0 zombie.number

function zombie:skill/remains/magmaslimeboss/death/particle with storage zombie

data remove storage zombie delta
data remove storage zombie count
