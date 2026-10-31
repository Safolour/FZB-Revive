# 主大厅：关掉玩家的交互实体。tick0 只在 interaction.state≥1 时才调用 interaction:tick0，这里把实体自己的状态也设成 0，
# 下一 tick 由 system:tick1 → interaction:tick1 的 system:death 清掉
scoreboard players set @s interaction.state 0
scoreboard players operation uuid uuid = @s uuid
execute as @e[type=interaction,tag=interaction] if score @s uuid = uuid uuid run scoreboard players set @s interaction.state 0
