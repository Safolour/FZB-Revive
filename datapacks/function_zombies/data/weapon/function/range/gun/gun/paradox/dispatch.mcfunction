execute if items entity @s container.* *[custom_data~{gun:"paradox"}] run return run function weapon:range/gun/gun/paradox/player_tick
execute if score @s weapon.pd_state matches 1.. run return run function weapon:range/gun/gun/paradox/player_tick
execute if score @s weapon.pd_count matches 1.. run return run function weapon:range/gun/gun/paradox/player_tick
execute if entity @s[tag=weapon.pd_f] run return run function weapon:range/gun/gun/paradox/player_tick
execute if entity @s[tag=weapon.pd_q] run return run function weapon:range/gun/gun/paradox/player_tick
