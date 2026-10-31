# 每个玩家每 tick（map:area/lab/tick0，执行者 = 玩家，没有 at）
execute unless entity @s[scores={system.room=4..}] run return 0
scoreboard players enable @s dialogue.trigger
execute if score @s dialogue.trigger = @s dialogue.trigger unless score @s dialogue.trigger matches 0 at @s run function map:area/lab/monhan/dialog/click

# 对话中走远（>5 格）、倒地或死亡：Monhan 说告别语，对话结束
execute unless score @s monhan.page matches 1.. run return 0
execute unless entity @s[scores={stat.player=1}] run return run scoreboard players set @s monhan.page 0
execute at @s unless entity @e[type=interaction,tag=area.lab.monhan.interaction,distance=..5] run function map:area/lab/monhan/dialog/away
