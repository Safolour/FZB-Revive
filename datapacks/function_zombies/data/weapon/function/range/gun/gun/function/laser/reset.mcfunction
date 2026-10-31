scoreboard objectives remove weapon.function_charge
scoreboard objectives remove weapon.laser_cap
scoreboard objectives remove weapon.laser_threshold
scoreboard objectives remove weapon.laser_s
scoreboard objectives remove weapon.laser_t
execute as @a[tag=weapon.laser_charge] run attribute @s jump_strength base reset
tag @a remove weapon.laser_charge
scoreboard objectives remove weapon.laser_c
scoreboard objectives remove weapon.laser_yaw
scoreboard objectives remove weapon.laser_pitch
scoreboard objectives remove weapon.laser_slot
