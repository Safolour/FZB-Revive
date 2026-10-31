# 显示手持灰烬火焰发射器中储存的金血，计分板储量单位为 0.01 HP，HUD 显示整点 HP
scoreboard players set #ashes_bank weapon.state 0
execute if items entity @s weapon *[custom_data~{tag:["ashesflamethrower"]}] if score @s weapon.ashes_reg matches 0.. run scoreboard players operation #ashes_bank weapon.state = @s weapon.ashes_reg
execute if items entity @s weapon *[custom_data~{tag:["ultimateashesflamethrower"]}] if score @s weapon.ashes_ult matches 0.. run scoreboard players operation #ashes_bank weapon.state = @s weapon.ashes_ult
scoreboard players set #ashes_hundred weapon.state 100
scoreboard players operation #ashes_hud weapon.state = #ashes_bank weapon.state
scoreboard players operation #ashes_hud weapon.state /= #ashes_hundred weapon.state
scoreboard players set @s[scores={system.actionbar=3..}] system.actionbar 1
title @s[scores={system.actionbar=1}] actionbar [{text:"[\uF032] ",color:"dark_gray"},{score:{name:"#ashes_hud",objective:"weapon.state"},color:"dark_gray"}]
