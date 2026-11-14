scoreboard players add #init fzb.attr 0
execute unless score #atk fzb.attr matches 20..180 run scoreboard players set #atk fzb.attr 100
execute unless score #def fzb.attr matches 20..180 run scoreboard players set #def fzb.attr 100
execute if score #game_active round matches 1 unless score #atk fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1
execute if score #game_active round matches 1 unless score #def fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1
execute positioned 14 -57 839 if entity @a[distance=..20] unless entity @e[type=text_display,tag=fzb.attr.panel,distance=..8] run function mainlobby:attribute_panel/spawn
execute as @e[type=interaction,tag=fzb.attr.panel] if data entity @s interaction run function mainlobby:attribute_panel/click
execute as @e[type=interaction,tag=fzb.attr.panel] if data entity @s attack run function mainlobby:attribute_panel/click
