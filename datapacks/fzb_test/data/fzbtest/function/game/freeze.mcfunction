# 冻结轮次推进（round 的 tick 门控为 1 时才推进），并清掉已生成的怪
scoreboard players set tick round 0
# 测试环境不触发死亡结算（真实玩家冻结回合时被烧死仍要结算，见 map/round/tick.mcfunction）
scoreboard players set debug round 1
function _:debug/mob_kill
kill @e[type=item,tag=powerup]
