# 1.21.8, 2026-10-25 recorder's normal/dream lore; damage scores use tenths.
scoreboard objectives add weapon.gun_paradox dummy
scoreboard players set uuid weapon.gun_paradox 10081
scoreboard players set damage weapon.gun_paradox 100
scoreboard players set ammo weapon.gun_paradox 1000
scoreboard players set clip_ammo weapon.gun_paradox 99
scoreboard players set rate weapon.gun_paradox 20
scoreboard players set reload weapon.gun_paradox 30
scoreboard players set range weapon.gun_paradox 48
scoreboard players set gold weapon.gun_paradox 10
scoreboard players set gold_crit weapon.gun_paradox 15
scoreboard players set punch weapon.gun_paradox 0
scoreboard players set extrashot weapon.gun_paradox 5
scoreboard players set extrashot_time weapon.gun_paradox 4
scoreboard players set erosion_damage weapon.gun_paradox 500
# Cooldown reduction is a fit from the recorder's HUD, kept as a named constant.
scoreboard players set hit_cd weapon.gun_paradox 3
scoreboard players set dream_damage weapon.gun_paradox 1000
scoreboard players set dream_rate weapon.gun_paradox 10
scoreboard players set dream_reload weapon.gun_paradox 10
scoreboard players set dream_extrashot weapon.gun_paradox 10
scoreboard objectives add weapon.gun_paradox_ammo dummy
scoreboard objectives add weapon.gun_paradox_clip_ammo dummy
scoreboard objectives add weapon.gun_paradox_rate dummy
scoreboard objectives add weapon.gun_paradox_rate0 dummy
scoreboard objectives add weapon.gun_paradox_reload dummy
scoreboard objectives add weapon.gun_paradox_slot dummy
scoreboard objectives add weapon.pd_state dummy
scoreboard objectives add weapon.pd_time dummy
scoreboard objectives add weapon.pd_fcd dummy
scoreboard objectives add weapon.pd_qcd dummy
scoreboard objectives add weapon.pd_count dummy
scoreboard objectives add weapon.pd_room dummy
scoreboard objectives add weapon.pd_owner dummy
scoreboard objectives add weapon.pd_ai dummy
scoreboard objectives add weapon.pd_x dummy
scoreboard objectives add weapon.pd_y dummy
scoreboard objectives add weapon.pd_z dummy
scoreboard objectives add weapon.pd_yaw dummy
scoreboard objectives add weapon.pd_pitch dummy
scoreboard objectives add weapon.pd_yaw0 dummy
scoreboard objectives add weapon.pd_pitch0 dummy
scoreboard objectives add weapon.pd_steps dummy
scoreboard objectives add weapon.pd_dist dummy
scoreboard objectives add weapon.pd_pierce dummy
scoreboard objectives add weapon.pd_hit dummy
scoreboard objectives add weapon.pd_damage dummy
scoreboard objectives add weapon.pd_born dummy
scoreboard objectives add weapon.pd_layout dummy
scoreboard objectives add weapon.pd_gravity dummy
scoreboard objectives add weapon.pd_jump dummy
scoreboard objectives add weapon.pd_fall dummy
scoreboard objectives add weapon.pd_safe_x dummy
scoreboard objectives add weapon.pd_safe_y dummy
scoreboard objectives add weapon.pd_safe_z dummy

execute unless score #next weapon.pd_room = #next weapon.pd_room run scoreboard players set #next weapon.pd_room 0
scoreboard players set #2048 weapon.pd_room 2048
scoreboard players set #18000 weapon.pd_room 18000
scoreboard players set #20 weapon.pd_time 20
scoreboard players set #360000 weapon.pd_yaw 360000
scoreboard players set #zero weapon.pd_yaw 0
scoreboard players set #zero weapon.pd_pitch 0
scoreboard players set #10000 weapon.pd_hit 10000
scoreboard players set #9983 weapon.pd_hit 9983
scoreboard players set #581 weapon.pd_hit 581
