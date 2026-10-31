# 兼容更新前已存放的武器；备份一旦存在，不用显示实体覆盖它。
execute unless data storage map:showcase item if entity @e[type=item,tag=area.lab.showcase.display,limit=1] run data modify storage map:showcase item set from entity @n[type=item,tag=area.lab.showcase.display] Item
execute unless entity @e[type=item,tag=area.lab.showcase.display,limit=1] if data storage map:showcase item run function map:area/lab/monhan/showcase/restore
