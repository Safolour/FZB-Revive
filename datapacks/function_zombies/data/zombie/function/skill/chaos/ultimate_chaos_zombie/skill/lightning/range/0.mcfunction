
data modify storage large_number:math temp1 set from storage large_number:math 3d_ar_rotation_circle_posX
data modify storage large_number:math temp2 set from storage large_number:math 3d_ar_rotation_circle_posY

execute if data storage large_number:math temp1[0] if data storage large_number:math temp2[0] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/1

data remove storage large_number:math 3d_ar_rotation_circle_posX
data remove storage large_number:math 3d_ar_rotation_circle_posY
