# 旁观者申请：游戏进行中点击大厅 NPC 不再直接旁观，而是向游戏内玩家发申请，由他们同意/拒绝
scoreboard objectives add dialogue0.trigger trigger
scoreboard objectives add spectator.accept dummy
scoreboard objectives add spectator.reject dummy
scoreboard objectives add spectator.timer dummy
scoreboard objectives add spectator.cooldown dummy
# 申请有效期（tick）和重复申请冷却（tick，对应 zb.mainlobby.spectator.6 的“每10秒”）
scoreboard players set expire spectator.timer 1200
scoreboard players set cooldown spectator.cooldown 200
