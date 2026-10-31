#time0=t
#time1=t-1
scoreboard players operation time0 zombie.skill.missile = time zombie.skill.missile
scoreboard players operation time1 zombie.skill.missile = time zombie.skill.missile
scoreboard players remove time1 zombie.skill.missile 1
scoreboard players operation time1 zombie.skill.missile *= 20000 number
data modify storage large_number:math float_multiply.input1 set value 1
data modify storage large_number:math float_multiply.input2 set value 0.98
function zombie:skill/missile/1
data modify storage large_number:math float_add_subtra.input1 set value 1
data modify storage large_number:math float_add_subtra.input2 set from storage large_number:math float_multiply.output
scoreboard players set #float_add_subtra_ope_mode int 2
function large_number:float_add_subtra/start
execute store result score x1 zombie.skill.missile run data get entity @s Pos[0] 10000
execute store result score y1 zombie.skill.missile run data get entity @s Pos[1] 10000
execute store result score z1 zombie.skill.missile run data get entity @s Pos[2] 10000
summon marker ~ ~ ~ {Tags:["chosen"]}
execute store result score x0 zombie.skill.missile run data get entity @n[type=marker,tag=chosen] Pos[0] 10000
execute store result score y0 zombie.skill.missile run data get entity @n[type=marker,tag=chosen] Pos[1] 10000
execute store result score z0 zombie.skill.missile run data get entity @n[type=marker,tag=chosen] Pos[2] 10000
kill @n[type=marker,tag=chosen]
scoreboard players operation x0 zombie.skill.missile -= x1 zombie.skill.missile
scoreboard players operation y0 zombie.skill.missile -= y1 zombie.skill.missile
scoreboard players operation z0 zombie.skill.missile -= z1 zombie.skill.missile
scoreboard players operation y0 zombie.skill.missile += time1 zombie.skill.missile
#Motion[0]
execute store result storage large_number:math float_multiply.input1 float 1 run scoreboard players get x0 zombie.skill.missile
data modify storage large_number:math float_multiply.input2 set value 0.000002
function large_number:float_multiply/of_score/start
data modify storage large_number:math float_division.input1 set from storage large_number:math float_multiply.output
data modify storage large_number:math float_division.input2 set from storage large_number:math float_add_subtra.output
function large_number:division/float/start
data modify storage zombie.skill.missile root.motion.0 set from storage large_number:math float_division.output
#Motion[2]
execute store result storage large_number:math float_multiply.input1 float 1 run scoreboard players get z0 zombie.skill.missile
data modify storage large_number:math float_multiply.input2 set value 0.000002
function large_number:float_multiply/of_score/start
data modify storage large_number:math float_division.input1 set from storage large_number:math float_multiply.output
data modify storage large_number:math float_division.input2 set from storage large_number:math float_add_subtra.output
function large_number:division/float/start
data modify storage zombie.skill.missile root.motion.2 set from storage large_number:math float_division.output
#Motion[1]
execute store result storage large_number:math float_multiply.input1 float 1 run scoreboard players get y0 zombie.skill.missile
data modify storage large_number:math float_multiply.input2 set value 0.000002
function large_number:float_multiply/of_score/start
data modify storage large_number:math float_division.input1 set from storage large_number:math float_multiply.output
data modify storage large_number:math float_division.input2 set from storage large_number:math float_add_subtra.output
function large_number:division/float/start
data modify storage large_number:math float_add_subtra.input1 set from storage large_number:math float_division.output
data modify storage large_number:math float_add_subtra.input2 set value 1.96
scoreboard players set #float_add_subtra_ope_mode int 2
function large_number:float_add_subtra/start
data modify storage zombie.skill.missile root.motion.1 set from storage large_number:math float_add_subtra.output

#function zombie:skill/missile/2 with storage zombie.skill.missile root.motion
