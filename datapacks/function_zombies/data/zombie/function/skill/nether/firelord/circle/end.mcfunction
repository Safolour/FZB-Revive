kill @e[type=item_display,tag=firelord.circle.model]
tag @a remove firelord.circle.owner
tag @a remove firelord.circle.r1
tag @a remove firelord.circle.r2
tag @a remove firelord.circle.b1
tag @a remove firelord.circle.b2
tag @s remove firelord.circle.r2
tag @s remove firelord.circle.b2
tag @s remove firelord.circle.active
execute if entity @s[tag=firelord.p3,tag=firelord.p3.eclipse.next] run scoreboard players set @s fl.circleclock 0
execute if entity @s[tag=firelord.circle.pending,tag=!firelord.phase.busy] run function zombie:skill/nether/firelord/circle/deferred_shield
execute if entity @s[tag=firelord.circle.pending,tag=firelord.phase.busy] run tag @s remove firelord.circle.pending
execute if entity @s[tag=firelord.p4.pending,tag=!firelord.phase.busy] at @s run function zombie:skill/nether/firelord/p4/begin
execute if entity @s[tag=firelord.p4.pending,tag=firelord.phase.busy] run tag @s remove firelord.p4.pending

scoreboard players set @s firelord.circle 0

