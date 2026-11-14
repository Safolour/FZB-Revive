# 仅在设置区处理大厅对话；对局的 Monhan 路由保持独立。
execute unless score @s system.room matches 2 run return 0
scoreboard players enable @s dialogue.trigger
execute if score @s monhan.page matches 70..73 unless entity @e[type=interaction,tag=fzb.intro_monhan.hit,distance=..5] run scoreboard players set @s monhan.page 0
execute if score @s monhan.page matches 80 unless entity @e[type=interaction,tag=fzb.intro_monhan.hit,distance=..5] run scoreboard players set @s monhan.page 0
execute if score @s dialogue.trigger = @s dialogue.trigger unless score @s dialogue.trigger matches 0 run function mainlobby:intro_monhan/click
