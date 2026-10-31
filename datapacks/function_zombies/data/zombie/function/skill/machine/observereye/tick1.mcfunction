#particle end_rod ~ ~1 ~
tp @s ^ ^ ^0.2 facing entity @p[scores={zombie.observereye=0,stat.player=1}]

execute unless entity @a[scores={zombie.observereye=0,stat.player=1}] run function zombie:skill/machine/observereye/update0
