# 以申请者身份执行（主大厅，游戏进行中点击 NPC）
# 本局的原玩家直接重新加入，不用申请
execute if function map:game/rejoin_0 run return 1
execute if score @s spectator.cooldown matches 1.. run return run tellraw @s [{translate:"zb.mainlobby.spectator.6"}]
# 游戏里没有能审批的玩家（只剩旁观者）时直接旁观
execute unless entity @a[scores={system.room=4..,stat.player=1..3}] run return run function mainlobby:spectator/join

scoreboard players operation @s spectator.cooldown = cooldown spectator.cooldown
scoreboard players operation @s spectator.timer = expire spectator.timer
execute store result score @s spectator.accept run random value 1..2147483646
execute store result score @s spectator.reject run random value 1..2147483646
execute if score @s spectator.accept = @s spectator.reject run scoreboard players add @s spectator.reject 1

tellraw @s [{translate:"zb.mainlobby.spectator.0"}]
execute store result storage mainlobby:spectator root.accept int 1 run scoreboard players get @s spectator.accept
execute store result storage mainlobby:spectator root.reject int 1 run scoreboard players get @s spectator.reject
function mainlobby:spectator/request_msg with storage mainlobby:spectator root
data remove storage mainlobby:spectator root
