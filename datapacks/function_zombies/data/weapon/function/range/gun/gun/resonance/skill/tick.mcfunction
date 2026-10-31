execute unless entity @s[scores={stat.player=1},gamemode=!spectator] run return run function weapon:range/gun/gun/resonance/skill/cancel
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"resonance"}] run return run function weapon:range/gun/gun/resonance/skill/cancel
execute store result score #res_slot weapon.state run data get entity @s SelectedItemSlot
execute unless score #res_slot weapon.state = @s weapon.res_slot run return run function weapon:range/gun/gun/resonance/skill/cancel
execute if score @s weapon.res_speed_t matches 1.. run scoreboard players remove @s weapon.res_speed_t 1
execute if score @s weapon.res_slow_t matches 1.. run scoreboard players remove @s weapon.res_slow_t 1
execute if score @s weapon.res_age matches 20 if entity @s[tag=weapon.res_rooted] run function weapon:range/gun/gun/resonance/skill/unroot
execute if score @s weapon.res_age matches 20.. run effect give @s speed 1 2 true
function weapon:range/gun/gun/resonance/skill/charge
scoreboard players set @s[scores={system.actionbar=2..}] system.actionbar 2
title @s[scores={system.actionbar=2}] actionbar {translate:"zb.item.gun.resonance.actionbar.2"}
function weapon:range/gun/gun/resonance/skill/durability
function weapon:range/gun/gun/resonance/skill/windup
execute if score @s weapon.res_age matches 20.. run function weapon:range/gun/gun/resonance/skill/active
execute if score @s weapon.res_age matches 100.. run return run function weapon:range/gun/gun/resonance/skill/finish
scoreboard players add @s weapon.res_age 1
