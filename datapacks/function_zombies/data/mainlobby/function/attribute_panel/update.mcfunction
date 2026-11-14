execute store result storage fzb:attribute_panel atk int 1 run scoreboard players get #atk fzb.attr
execute store result storage fzb:attribute_panel def int 1 run scoreboard players get #def fzb.attr
scoreboard players operation #color fzb.attr = #atk fzb.attr
function mainlobby:attribute_panel/color
data modify storage fzb:attribute_panel atkcolor set from storage fzb:attribute_panel color
scoreboard players operation #color fzb.attr = #def fzb.attr
function mainlobby:attribute_panel/color
data modify storage fzb:attribute_panel defcolor set from storage fzb:attribute_panel color
function mainlobby:attribute_panel/update_text with storage fzb:attribute_panel
data merge entity @e[type=text_display,tag=fzb.attr.warning,limit=1] {text_opacity:0b}
execute unless score #atk fzb.attr matches 100 run data merge entity @e[type=text_display,tag=fzb.attr.warning,limit=1] {text_opacity:-71b}
execute unless score #def fzb.attr matches 100 run data merge entity @e[type=text_display,tag=fzb.attr.warning,limit=1] {text_opacity:-71b}
