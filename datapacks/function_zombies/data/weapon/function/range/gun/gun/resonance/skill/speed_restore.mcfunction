effect clear @s speed
execute if score @s weapon.res_speed matches ..-1 run return 0
execute if score @s weapon.res_speed_t matches 0 run return 0
execute store result storage weapon:resonance speed.amp int 1 run scoreboard players get @s weapon.res_speed
data modify storage weapon:resonance speed.duration set value "infinite"
execute if score @s weapon.res_speed_t matches 1.. run scoreboard players add @s weapon.res_speed_t 19
execute if score @s weapon.res_speed_t matches 1.. run scoreboard players operation @s weapon.res_speed_t /= #20 weapon.gun_resonance
execute if score @s weapon.res_speed_t matches 1.. store result storage weapon:resonance speed.duration int 1 run scoreboard players get @s weapon.res_speed_t
function weapon:range/gun/gun/resonance/skill/speed_apply with storage weapon:resonance speed
data remove storage weapon:resonance speed
