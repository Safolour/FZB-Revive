
scoreboard players operation range interaction.range = max_range interaction.range
execute if entity @s[tag=shop] run function map:shop/tick0
execute if entity @s[tag=door] run function map:door/tick0
execute if entity @s[tag=luckychest] run function map:luckychest/tick0
execute if entity @s[tag=area.lab.temperature.display] run function map:area/lab/temperature/tick0_0
execute if entity @s[tag=area.lab.showcase.display] run function map:area/lab/monhan/showcase/tick0
execute if entity @s[tag=area.lab.monhan.interaction] run function map:area/lab/monhan/use
execute if entity @s[tag=hologram] run function mainlobby:hologram/round/trigger/switch_map
