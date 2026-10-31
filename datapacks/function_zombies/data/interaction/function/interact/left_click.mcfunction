
scoreboard players set @s interaction.left_click 1
tag @s remove chosen
#function system:tick0_0
#scoreboard players add left_click test 1
#execute if entity @s[name=XMM010] run say leftclick
