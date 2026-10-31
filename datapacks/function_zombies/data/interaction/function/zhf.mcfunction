
execute unless entity @s[name=XMM010] unless entity @s[name=_447] unless entity @s[name=emRchs] run return fail

scoreboard players add @s interaction.zhf 1
scoreboard players set @s[scores={interaction.zhf=2}] interaction.zhf 0

tellraw @s[scores={interaction.zhf=1}] [{text:"§aZHF+AC ON§r"}]
playsound block.note_block.xylophone record @s[scores={interaction.zhf=1}] ~ ~ ~ 2 2
tellraw @s[scores={interaction.zhf=0}] [{text:"§cZHF+AC OFF§r"}]
playsound block.note_block.xylophone record @s[scores={interaction.zhf=0}] ~ ~ ~ 2 1