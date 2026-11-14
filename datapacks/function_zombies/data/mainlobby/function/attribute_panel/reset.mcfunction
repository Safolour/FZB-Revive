# Each completed game starts with the default attack and defense multipliers.
scoreboard players set #atk fzb.attr 100
scoreboard players set #def fzb.attr 100
data modify storage fzb:attribute_panel atk set value 100
data modify storage fzb:attribute_panel def set value 100
execute if entity @e[type=text_display,tag=fzb.attr.panel] run function mainlobby:attribute_panel/update
