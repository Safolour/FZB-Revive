execute as @a at @s run function weapon:range/gun/gun/paradox/cleanup
execute as @e[tag=paradox.captive] at @s run function weapon:range/gun/gun/paradox/captive/return
execute as @e[type=marker,tag=paradox.room_control] run function weapon:range/gun/gun/paradox/room/offline
kill @e[type=marker,tag=paradox.mark]
kill @e[tag=paradox.proj]
kill @e[tag=paradox.return]
kill @e[tag=paradox.slash]
kill @e[tag=paradox.sky]
scoreboard objectives remove weapon.gun_paradox
scoreboard objectives remove weapon.gun_paradox_ammo
scoreboard objectives remove weapon.gun_paradox_clip_ammo
scoreboard objectives remove weapon.gun_paradox_rate
scoreboard objectives remove weapon.gun_paradox_rate0
scoreboard objectives remove weapon.gun_paradox_reload
scoreboard objectives remove weapon.gun_paradox_slot
scoreboard objectives remove weapon.pd_state
scoreboard objectives remove weapon.pd_time
scoreboard objectives remove weapon.pd_fcd
scoreboard objectives remove weapon.pd_qcd
scoreboard objectives remove weapon.pd_count
scoreboard objectives remove weapon.pd_room
scoreboard objectives remove weapon.pd_owner
scoreboard objectives remove weapon.pd_ai
scoreboard objectives remove weapon.pd_x
scoreboard objectives remove weapon.pd_y
scoreboard objectives remove weapon.pd_z
scoreboard objectives remove weapon.pd_yaw
scoreboard objectives remove weapon.pd_pitch
scoreboard objectives remove weapon.pd_yaw0
scoreboard objectives remove weapon.pd_pitch0
scoreboard objectives remove weapon.pd_steps
scoreboard objectives remove weapon.pd_dist
scoreboard objectives remove weapon.pd_pierce
scoreboard objectives remove weapon.pd_hit
scoreboard objectives remove weapon.pd_damage
scoreboard objectives remove weapon.pd_born
scoreboard objectives remove weapon.pd_layout
scoreboard objectives remove weapon.pd_gravity
scoreboard objectives remove weapon.pd_jump
scoreboard objectives remove weapon.pd_fall
scoreboard objectives remove weapon.pd_safe_x
scoreboard objectives remove weapon.pd_safe_y
scoreboard objectives remove weapon.pd_safe_z
