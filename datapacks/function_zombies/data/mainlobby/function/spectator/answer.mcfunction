# 以点击 [同意]/[拒绝] 的玩家身份执行
scoreboard players operation #id spectator.accept = @s dialogue0.trigger
scoreboard players set @s dialogue0.trigger 0
execute unless entity @s[scores={system.room=4..,stat.player=1..3}] run return run tellraw @s {translate:"zb.mainlobby.spectator.8"}
tag @s add spectator.answerer
execute as @a[scores={spectator.timer=1..}] if score @s spectator.accept = #id spectator.accept run tag @s add spectator.accepted
execute as @a[scores={spectator.timer=1..}] if score @s spectator.reject = #id spectator.accept run tag @s add spectator.rejected
execute unless entity @a[tag=spectator.accepted] unless entity @a[tag=spectator.rejected] run tellraw @s {translate:"zb.mainlobby.spectator.8"}
execute as @a[tag=spectator.accepted,limit=1] at @s run function mainlobby:spectator/accept
execute as @a[tag=spectator.rejected,limit=1] run function mainlobby:spectator/reject
tag @a remove spectator.accepted
tag @a remove spectator.rejected
tag @s remove spectator.answerer
scoreboard players reset #id spectator.accept
