scoreboard players add @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing] fl.p2.shot 1
execute as @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=210..249}] at @s run function zombie:skill/nether/firelord/p2/ghast/charge
execute if entity @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=250..}] run function zombie:skill/nether/firelord/p2/ghast/shoot
scoreboard players set @e[type=ghast,tag=firelord.p2.ghast,tag=!firelord.p2.bombing,scores={fl.p2.shot=250..}] fl.p2.shot 0
execute as @e[type=marker,tag=firelord.p2.spawn.target] at @s run function zombie:skill/nether/firelord/p4/legion/trajectory/trail
execute if entity @s[tag=firelord.p2.preparebomb] run return run function zombie:skill/nether/firelord/p2/preparebomb_tick
scoreboard players add @e[type=item_display,tag=firelord.p2.mark] zombie.skill_timer 1
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=1..33}] run function zombie:skill/nether/firelord/p2/meteor/shadow_tick
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=20}] at @s run function zombie:skill/nether/firelord/p2/meteor/create
execute as @e[type=block_display,tag=firelord.p2.meteor] at @s run function zombie:skill/nether/firelord/p2/meteor/move
execute as @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=35..}] at @s positioned ~ ~0.1 ~ run function zombie:skill/nether/firelord/p2/meteor/impact
kill @e[type=item_display,tag=firelord.p2.mark,scores={zombie.skill_timer=35..}]
execute as @e[type=ghast,tag=firelord.p2.ghast] at @s run function zombie:skill/nether/firelord/p2/ghast/tick
execute as @e[type=marker,tag=firelord.p2.shot] at @s run function zombie:skill/nether/firelord/p2/shot/tick
execute if entity @s[tag=firelord.p2.meteors] run return run function zombie:skill/nether/firelord/p2/meteor/tick
execute if entity @s[tag=firelord.p2.wave1] run return run function zombie:skill/nether/firelord/p2/wave1_tick
execute if entity @s[tag=firelord.p2.wave2] run return run function zombie:skill/nether/firelord/p2/wave2_tick
execute if entity @s[tag=firelord.p2.ashes] run return run function zombie:skill/nether/firelord/p2/ashes_tick
execute if entity @s[tag=firelord.p2.bomb] run return run function zombie:skill/nether/firelord/p2/bomb_tick
