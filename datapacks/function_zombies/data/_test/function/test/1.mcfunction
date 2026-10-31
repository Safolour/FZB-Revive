#0.98的n次幂
function large_number:float_multiply/of_score/start
data modify storage large_number:math float_multiply.input1 set from storage large_number:math float_multiply.output
scoreboard players remove time0 test 1
execute if score time0 test matches 1.. run return run function _test:test/1

