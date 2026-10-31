#0.98的n次幂
function large_number:float_multiply/of_score/start
data modify storage large_number:math float_multiply.input1 set from storage large_number:math float_multiply.output
scoreboard players remove time0 zombie.skill.missile 1
execute if score time0 zombie.skill.missile matches 1.. run return run function zombie:skill/missile/1