# 以假人身份执行：模拟真实客户端左键命中自己的交互实体（原版会写入 attack:{player,timestamp}）
# Carpet 假人的攻击射线不会命中包住眼睛的交互实体，所以从这里注入，之后的检测链路与真实玩家一致
tag @s add fzbtest_self
scoreboard players operation #self fzbtest = @s uuid
execute as @e[type=interaction,tag=interaction] if score @s uuid = #self fzbtest run data modify entity @s attack set value {player:[I;0,0,0,0],timestamp:0L}
execute as @e[type=interaction,tag=interaction] if score @s uuid = #self fzbtest run data modify entity @s attack.player set from entity @p[tag=fzbtest_self] UUID
tag @s remove fzbtest_self
