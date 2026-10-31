
$execute unless entity @e[type=marker,tag=spawner,tag=$(spawner),scores={round.spawn=0},distance=..$(spawn_range)] run scoreboard players set @e[type=marker,tag=spawner] round.spawn 0
$execute as @r[scores={system.room=4}] at @s run scoreboard players set @e[type=marker,tag=spawner,tag=$(spawner),distance=..$(spawn_range),limit=1,sort=random,scores={round.spawn=0}] round.spawn 1
$execute as @e[type=marker,tag=spawner,tag=$(spawner),tag=!exact,scores={round.spawn=1}] at @s positioned ~$(x) ~ ~$(z) run function zombie:zombie/$(id)
$execute as @e[type=marker,tag=spawner,tag=$(spawner),tag=exact,scores={round.spawn=1}] at @s positioned ~ ~ ~ run function zombie:zombie/$(id)
scoreboard players set @e[type=marker,tag=spawner,scores={round.spawn=1}] round.spawn 2
