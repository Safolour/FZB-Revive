tag @s remove weapon.res_request
execute if entity @s[tag=weapon.res_cast] run return 0
execute unless entity @s[scores={stat.player=1},gamemode=!spectator] run return 0
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"resonance"}] run return 0
execute unless score @s weapon.res_charge matches 1000.. run return run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5 0
execute if entity @s[tag=weapon.laser_charge] run function weapon:range/gun/gun/function/laser/charge/cancel
function weapon:range/gun/gun/resonance/skill/start
