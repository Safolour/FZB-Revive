# 玩家每 tick（blueprint/tick 开头）：手上是另一把蓝图（stat.id 不同）就重新读；有蓝图属性就抄给全局数值
execute if items entity @s weapon.mainhand *[custom_data~{gun:"blueprint"}] run function weapon:range/gun/gun/blueprint/stat/check
execute if score @s weapon.bp_id = @s weapon.bp_id if items entity @s container.* *[custom_data~{gun:"blueprint"}] run function weapon:range/gun/gun/blueprint/stat/apply
