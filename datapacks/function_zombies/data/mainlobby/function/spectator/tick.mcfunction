# 每个玩家每 tick（system:tick2）
scoreboard players enable @s[scores={system.room=4..,stat.player=1..3}] dialogue0.trigger
execute if score @s dialogue0.trigger matches 1.. run function mainlobby:spectator/answer
execute if score @s dialogue0.trigger matches ..-1 run scoreboard players set @s dialogue0.trigger 0
execute if score @s spectator.cooldown matches 1.. run scoreboard players remove @s spectator.cooldown 1
execute if score @s spectator.timer matches 1.. run function mainlobby:spectator/timer
