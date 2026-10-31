
data modify storage large_number:math bezier_curve_N_input set value [[-16,-58,14]]
#data modify storage large_number:math bezier_curve_N_input set value [[299.0d,98.0d,148.0d],[308.0d,100.0d,152.0d],[301.0d,100.0d,154.0d]]
#data modify storage large_number:math bezier_curve_N_input set value [[80.53327412400547d, 70.0d, -10.415578849420953d], [80.48320434763545d, 81.0d, -10.45320665493354d], [72.4587502815431d, 82.0d, 0.4828503464197471d], [72.46377528715864d, 70.0d, 0.4513856142506847d], [65.42754948340058d, 70.0d, 12.69010062208451d], [65.29733593096364d, 91.0d, 12.673135434650552d]]
scoreboard players set #bezier_curve_N.t.size int 500
function large_number:particle/bezier_curve_n/start
#scoreboard players set #bezier_curve_N.order int 1
execute positioned ~ ~ ~ rotated ~ ~ run function large_number:particle/bezier_curve_n/particle

