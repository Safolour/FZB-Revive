execute if entity @s[tag=weapon.res_cast] run return 0
# Carry recharge, including with another item held; paused during the skill.
execute unless items entity @s container.* *[custom_data~{gun:"resonance"}] unless items entity @s weapon.offhand *[custom_data~{gun:"resonance"}] run return 0
execute unless score @s weapon.res_charge matches 0.. run scoreboard players set @s weapon.res_charge 0
execute unless score @s weapon.res_regen matches 0.. run scoreboard players set @s weapon.res_regen 0
scoreboard players add @s weapon.res_regen 1
execute if score @s weapon.res_regen matches 20.. run scoreboard players add @s weapon.res_charge 2
execute if score @s weapon.res_regen matches 20.. run scoreboard players set @s weapon.res_regen 0
execute if score @s weapon.res_charge matches 1001.. run scoreboard players set @s weapon.res_charge 1000
