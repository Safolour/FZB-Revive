# Remaining charge = 400 + 600 * remaining duration / 100 ticks.
scoreboard players set #res_left weapon.state 100
scoreboard players operation #res_left weapon.state -= @s weapon.res_age
scoreboard players operation @s weapon.res_charge = #res_left weapon.state
scoreboard players operation @s weapon.res_charge *= #600 weapon.gun_resonance
scoreboard players operation @s weapon.res_charge /= #100 weapon.gun_resonance
scoreboard players add @s weapon.res_charge 400
