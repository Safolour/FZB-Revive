# 属性面板只允许在大厅调整；对局中的点击只清理交互记录，避免结束后补执行。
execute if score #game_active round matches 1 run data remove entity @s interaction
execute if score #game_active round matches 1 run data remove entity @s attack
execute if score #game_active round matches 1 run return fail

scoreboard players set #step fzb.attr 1
execute if data entity @s interaction.player store result score #panel uuid0 run data get entity @s interaction.player[0]
execute if data entity @s interaction.player store result score #panel uuid1 run data get entity @s interaction.player[1]
execute if data entity @s interaction.player store result score #panel uuid2 run data get entity @s interaction.player[2]
execute if data entity @s interaction.player store result score #panel uuid3 run data get entity @s interaction.player[3]
execute if data entity @s interaction.player as @a[predicate=map:is_sneaking] if score @s uuid0 = #panel uuid0 if score @s uuid1 = #panel uuid1 if score @s uuid2 = #panel uuid2 if score @s uuid3 = #panel uuid3 run scoreboard players set #step fzb.attr 10
execute if entity @s[tag=fzb.attr.atk.plus] run scoreboard players operation #atk fzb.attr += #step fzb.attr
execute if entity @s[tag=fzb.attr.atk.minus] run scoreboard players operation #atk fzb.attr -= #step fzb.attr
execute if entity @s[tag=fzb.attr.def.plus] run scoreboard players operation #def fzb.attr += #step fzb.attr
execute if entity @s[tag=fzb.attr.def.minus] run scoreboard players operation #def fzb.attr -= #step fzb.attr
execute if score #atk fzb.attr matches ..19 run scoreboard players set #atk fzb.attr 20
execute if score #atk fzb.attr matches 181.. run scoreboard players set #atk fzb.attr 180
execute if score #def fzb.attr matches ..19 run scoreboard players set #def fzb.attr 20
execute if score #def fzb.attr matches 181.. run scoreboard players set #def fzb.attr 180
execute if score #game_active round matches 1 unless score #atk fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1
execute if score #game_active round matches 1 unless score #def fzb.attr matches 100 run scoreboard players set #invalid fzb.attr 1
execute if data entity @s interaction.player on target at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1
execute unless data entity @s interaction.player if data entity @s attack.player on attacker at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1
data remove entity @s interaction
data remove entity @s attack
function mainlobby:attribute_panel/update
