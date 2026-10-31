
execute if entity @p[tag=chosen,scores={interaction.zhf=1}] run return fail
scoreboard players set @p[tag=chosen,scores={interaction.right_click=1..}] interaction.right_click 0

function map:luckychest/trigger/use with entity @s data