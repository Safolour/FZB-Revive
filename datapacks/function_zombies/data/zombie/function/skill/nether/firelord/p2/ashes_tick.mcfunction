scoreboard players add @s fl.p2.ashes 1
execute unless entity @s[tag=firelord.p2.ashes.boss_spawned] as @e[type=marker,tag=firelord.p2.spawn.ashes_pending,tag=firelord.p2.spawn.ready,limit=1] at @s run function zombie:skill/nether/firelord/p2/spawn/ashes_first_land
execute if entity @s[tag=firelord.p2.ashes.boss_spawned] as @e[type=marker,tag=firelord.p2.spawn.ashes_pending,tag=firelord.p2.spawn.ready] at @s run function zombie:skill/nether/firelord/p2/spawn/ashes_golem_land
execute at @e[type=wither_skeleton,tag=firelord.p2.apostle,limit=1] positioned ~ ~4.2 ~ run tp @e[type=text_display,tag=firelord.p2.icon,limit=1] ~ ~ ~
execute if entity @e[tag=firelord.p2.golem,scores={zombie.health=1..}] as @e[tag=firelord.p2.apostle] at @s run function zombie:skill/nether/firelord/p2/apostle_shield
execute unless entity @e[type=marker,tag=firelord.p2.spawn.target] unless entity @e[tag=firelord.p2.golem,scores={zombie.health=1..}] as @e[tag=firelord.p2.apostle,tag=!firelord.p2.unlocked] at @s run function zombie:skill/nether/firelord/p2/shield_unlock
execute if score @s fl.p2.ashes matches 60 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 120 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 180 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 240 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 300 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 360 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 420 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 480 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s fl.p2.ashes matches 80 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 140 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 200 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 260 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 320 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 380 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 440 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 500 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s fl.p2.ashes matches 90 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 150 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 210 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 270 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 330 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 390 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 450 run function zombie:skill/nether/firelord/p2/laser
execute if score @s fl.p2.ashes matches 510 run function zombie:skill/nether/firelord/p2/laser
execute if score @s zombie.skill_timer matches 160.. run scoreboard players set @s zombie.skill_timer 0
execute if entity @s[tag=firelord.p2.ashes.boss_spawned] unless entity @e[tag=firelord.p2.apostle,scores={zombie.health=1..}] run return run function zombie:skill/nether/firelord/p2/preparebomb
execute if score @s fl.p2.ashes matches 537.. run function zombie:skill/nether/firelord/p2/ashes_timeout
