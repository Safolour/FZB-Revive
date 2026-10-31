# 火焰子弹（flame_bullet）：枪命中后由 perk/hit/post 调用（执行者 = 被打的敌人）
# 点燃 time 刻（免疫火焰的敌人也会被点燃）。用 HasVisualFire 只显示火焰、不是真的着火，所以着火的敌人不会把火传给玩家
# 燃烧伤害在 perk/flame_bullet/burn（map:perk/tick0 每 tick 调用）
execute unless score @s perk.flame_time matches 1.. run data modify entity @s HasVisualFire set value 1b
scoreboard players operation @s perk.flame_time = time perk.flame_bullet
scoreboard players operation @s perk.owner = @p[scores={weapon.use=1..}] uuid
