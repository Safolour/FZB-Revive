# This clock belongs to P4 and does not reuse the boss's legion timer.
execute unless entity @e[type=zombie,tag=skill.firelord.shield,tag=firelord.p4] run return run function zombie:skill/nether/firelord/p4/meteor/stop
scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 350.. run function zombie:skill/nether/firelord/p4/meteor/warn
# P2 and P4 are mutually exclusive; reuse the same marker and meteor lifecycle.
scoreboard players add @e[type=item_display,tag=firelord.p2.mark] zombie.skill_timer 1
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=1..33}] at @s run function zombie:skill/nether/firelord/p2/meteor/shadow_tick
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=20}] at @s run function zombie:skill/nether/firelord/p2/meteor/create
execute as @e[type=block_display,tag=firelord.p2.meteor] at @s run function zombie:skill/nether/firelord/p2/meteor/move
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=35..}] at @s positioned ~ ~0.1 ~ run function zombie:skill/nether/firelord/p2/meteor/impact
kill @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=35..}]
