tag @s remove weapon.res_rooted
execute store result storage weapon:resonance jump.value double 0.000001 run scoreboard players get @s weapon.res_jump
function weapon:range/gun/gun/resonance/skill/jump_restore with storage weapon:resonance jump
data remove storage weapon:resonance jump
effect clear @s slowness
execute if score @s weapon.res_slow matches ..-1 run return 0
execute if score @s weapon.res_slow_t matches 0 run return 0
execute store result storage weapon:resonance slow.amp int 1 run scoreboard players get @s weapon.res_slow
data modify storage weapon:resonance slow.duration set value "infinite"
execute if score @s weapon.res_slow_t matches 1.. run scoreboard players add @s weapon.res_slow_t 19
execute if score @s weapon.res_slow_t matches 1.. run scoreboard players operation @s weapon.res_slow_t /= #20 weapon.gun_resonance
execute if score @s weapon.res_slow_t matches 1.. store result storage weapon:resonance slow.duration int 1 run scoreboard players get @s weapon.res_slow_t
function weapon:range/gun/gun/resonance/skill/slow_apply with storage weapon:resonance slow
data remove storage weapon:resonance slow
