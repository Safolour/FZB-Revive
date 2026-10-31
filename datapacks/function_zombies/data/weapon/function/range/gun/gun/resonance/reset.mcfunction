scoreboard objectives remove weapon.gun_resonance
scoreboard objectives remove weapon.gun_resonance_ammo
scoreboard objectives remove weapon.gun_resonance_clip_ammo
scoreboard objectives remove weapon.gun_resonance_rate
scoreboard objectives remove weapon.gun_resonance_rate0
scoreboard objectives remove weapon.gun_resonance_reload
scoreboard objectives remove weapon.gun_resonance_slot
scoreboard objectives remove weapon.resonance_born
scoreboard objectives remove weapon.resonance_dist
scoreboard objectives remove weapon.resonance_steps
scoreboard objectives remove weapon.resonance_pierce
scoreboard objectives remove weapon.resonance_stop
kill @e[tag=resonance_proj]

scoreboard objectives remove weapon.res_charge
scoreboard objectives remove weapon.res_regen
execute as @a[tag=weapon.res_cast] at @s run function weapon:range/gun/gun/resonance/skill/cancel
scoreboard objectives remove weapon.res_age
scoreboard objectives remove weapon.res_slot
scoreboard objectives remove weapon.res_heal
scoreboard objectives remove weapon.res_prev
scoreboard objectives remove weapon.res_speed
scoreboard objectives remove weapon.res_speed_t
tag @a remove weapon.res_request
kill @e[tag=res_skill_ray]
scoreboard objectives remove weapon.res_slow
scoreboard objectives remove weapon.res_slow_t
scoreboard objectives remove weapon.res_jump
