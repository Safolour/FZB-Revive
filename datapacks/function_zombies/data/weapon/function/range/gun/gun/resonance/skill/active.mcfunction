scoreboard players operation #res_stage weapon.state = @s weapon.res_age
scoreboard players remove #res_stage weapon.state 20
scoreboard players operation #res_mod weapon.state = #res_stage weapon.state
scoreboard players set #res_six weapon.state 6
scoreboard players operation #res_mod weapon.state %= #res_six weapon.state
execute if score #res_mod weapon.state matches 0 run function weapon:range/gun/gun/resonance/skill/pulse
scoreboard players remove @s[scores={weapon.res_heal=1..}] weapon.res_heal 1
execute if score @s weapon.res_heal matches ..0 run function weapon:range/gun/gun/resonance/skill/heal
