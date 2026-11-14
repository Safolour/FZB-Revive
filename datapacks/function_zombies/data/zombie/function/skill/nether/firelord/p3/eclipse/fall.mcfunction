# Approximate measured fall: +0.02 blocks/tick per tick, capped at 0.5 blocks/tick.
scoreboard players add @s fl.eclipse.v 20
execute if score @s fl.eclipse.v matches 501.. run scoreboard players set @s fl.eclipse.v 500
execute store result score #eclipse.y fl.eclipse.v run data get entity @s Pos[1] 1000
scoreboard players operation #eclipse.y fl.eclipse.v -= @s fl.eclipse.v
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #eclipse.y fl.eclipse.v
execute if score #eclipse.y fl.eclipse.v matches ..98350 run function zombie:skill/nether/firelord/p3/eclipse/lightning
execute if score #eclipse.y fl.eclipse.v matches ..91350 run function zombie:skill/nether/firelord/p3/eclipse/end
