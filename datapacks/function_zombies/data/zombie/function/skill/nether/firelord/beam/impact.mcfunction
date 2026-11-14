function zombie:skill/nether/firelord/beam/column
execute at @e[type=marker,tag=firelord.beam.impact,distance=..6,sort=nearest,limit=1] run function zombie:skill/nether/firelord/beam/impact_visual
execute unless entity @e[type=marker,tag=firelord.beam.impact,distance=..6] run function zombie:skill/nether/firelord/beam/impact_visual
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle end_rod ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle end_rod ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle cloud ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle cloud ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
tag @a remove fl.beam.protected
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run tag @s add fl.beam.protected
scoreboard players set #shielddamage zombie.health 160
execute as @e[type=marker,tag=firelord.p2.safe,distance=..8] at @s run function zombie:skill/nether/firelord/p2/safe_hit
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3,tag=!fl.beam.protected] at @s run function zombie:skill/nether/firelord/beam/hit_player
tag @a remove fl.beam.protected
kill @e[type=item_display,tag=firelord.beam.model0,distance=..1]
kill @e[type=item_display,tag=firelord.beam.model1,distance=..1]
execute as @e[tag=mob,tag=hitable,distance=..3] at @s positioned ~ ~1 ~ run particle flame ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
execute as @e[tag=mob,tag=hitable,distance=..3] at @s positioned ~ ~1 ~ run particle flame ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle flame ~ ~ ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
execute as @a[scores={stat.player=1},gamemode=adventure,distance=..3] at @s positioned ~ ~1 ~ run particle flame ~ ~ ~ 0 0 0 0.2 10 force @a[scores={particle=1}]
kill @e[type=marker,tag=firelord.beam.impact,distance=..6,sort=nearest,limit=1]
kill @s
