# 加成 = 最大加成 ×（当前金血 + 背包内灰烬发射器储存值）/ 120；内部按 0.01 生命计算
execute store result score #abs perk run data get entity @s AbsorptionAmount 100
execute if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] if score @s weapon.ashes_reg matches 0.. run scoreboard players operation #abs perk += @s weapon.ashes_reg
execute if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] if score @s weapon.ashes_ult matches 0.. run scoreboard players operation #abs perk += @s weapon.ashes_ult
scoreboard players set #abs_denominator perk 12000
scoreboard players set @s perk.absorption_damage 0
scoreboard players set @s perk.absorption_resist 0
execute unless score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_damage = damage_max perk.absorptionconversion
execute unless score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_damage *= #abs perk
execute unless score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_damage /= #abs_denominator perk
execute if score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_resist = resist_max perk.absorptionconversion
execute if score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_resist *= #abs perk
execute if score @s perk.absorption_mode matches 1 run scoreboard players operation @s perk.absorption_resist /= #abs_denominator perk

execute if score @s interaction.right_click matches 1.. if items entity @s weapon.mainhand *[custom_data~{tag:["absorptionconversion"]}] run function map:perk/absorptionconversion/switch
