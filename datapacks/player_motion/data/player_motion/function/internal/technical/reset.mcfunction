#> player_motion:internal/technical/load
# LOAD FUNCTION

# STORAGE
data remove storage player_motion:math unitvector
data remove storage player_motion:math motion
data remove storage player_motion:math pos
data remove storage player_motion:trig arr
data remove storage player_motion:arcsine arr
data remove storage player_motion:cosine arr
data remove storage player_motion:sine arr
data remove storage large_number:math 3d_ar_rotation_circle_posY
data remove storage large_number:math 3d_ar_rotation_circle_posX
data remove storage player_motion:math motion_x
data remove storage player_motion:math motion_y
data remove storage player_motion:math motion_z
data remove storage player_motion:math full_d
data remove storage player_motion:math d
data remove storage player_motion:math magnitude
data remove storage player_motion:math strength

# SCORES
scoreboard objectives remove player_motion.api.launch
scoreboard objectives remove player_motion.internal.dummy
scoreboard objectives remove player_motion.internal.math
scoreboard objectives remove player_motion.internal.math.sqrt
scoreboard objectives remove player_motion.internal.const
scoreboard objectives remove player_motion.internal.motion.x
scoreboard objectives remove player_motion.internal.motion.y
scoreboard objectives remove player_motion.internal.motion.z
scoreboard objectives remove player_motion.internal.gamemode

forceload remove 0 0