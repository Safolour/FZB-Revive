execute unless score #atk fzb.attr matches 20..180 store result score #atk fzb.attr run data get storage fzb:attribute_panel atk
execute unless score #def fzb.attr matches 20..180 store result score #def fzb.attr run data get storage fzb:attribute_panel def
execute unless score #atk fzb.attr matches 20..180 run scoreboard players set #atk fzb.attr 100
execute unless score #def fzb.attr matches 20..180 run scoreboard players set #def fzb.attr 100
