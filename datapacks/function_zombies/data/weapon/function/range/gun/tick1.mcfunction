execute if entity @s[type=item,tag=snowballcannon] at @s run function weapon:range/gun/loop/1
execute if entity @s[type=item,tag=ultimatesnowballcannon] at @s run function weapon:range/gun/loop/1
execute if entity @s[type=item_display,tag=rocketlauncher] at @s run function weapon:range/gun/loop/1
execute if entity @s[type=item_display,tag=ultimaterocketlauncher] at @s run function weapon:range/gun/loop/1

execute if entity @s[type=marker,tag=airgun,tag=push_wave] at @s run function weapon:range/gun/gun/airgun/wave/tick
execute if entity @s[type=marker,tag=ultimateairgun,tag=push_wave] at @s run function weapon:range/gun/gun/ultimateairgun/wave/tick
execute if entity @s[type=marker,tag=extrashot] at @s run function weapon:range/gun/gun/extrashot/0
execute if entity @s[type=marker,tag=ashes_proj] run function weapon:range/gun/gun/ashesflamethrower/proj/tick1
execute if entity @s[type=item_display,tag=function_laser] run function weapon:range/gun/gun/function/laser/beam_tick
execute if entity @s[tag=aurora_proj] run function weapon:range/gun/gun/aurora/proj/tick1
execute if entity @s[tag=resonance_proj] run function weapon:range/gun/gun/resonance/proj/tick1
execute if entity @s[tag=rainbowrocketlauncher_proj] run function weapon:range/gun/gun/rainbowrocketlauncher/proj/tick1
execute if entity @s[tag=rainbowrocketlauncher_explosion] at @s run function weapon:range/gun/gun/rainbowrocketlauncher/explosion/tick1
