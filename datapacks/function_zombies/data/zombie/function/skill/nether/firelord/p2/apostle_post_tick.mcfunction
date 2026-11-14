# Remaining elites continue their normal behavior after the wave timer expires.
execute positioned ~ ~4.2 ~ run tp @e[type=text_display,tag=firelord.p2.icon,limit=1,sort=nearest] ~ ~ ~
execute if entity @e[type=zombie,tag=firelord.p2.golem,scores={zombie.health=1..}] run function zombie:skill/nether/firelord/p2/apostle_shield
execute unless entity @e[type=marker,tag=firelord.p2.spawn.ashes_pending] unless entity @e[type=zombie,tag=firelord.p2.golem,scores={zombie.health=1..}] unless entity @s[tag=firelord.p2.unlocked] run function zombie:skill/nether/firelord/p2/shield_unlock
scoreboard players add @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 60 run function zombie:skill/nether/firelord/p2/laser_charge
execute if score @s zombie.skill_timer matches 80 run function zombie:skill/nether/firelord/p2/laser_rune_spawn
execute if score @s zombie.skill_timer matches 90 run function zombie:skill/nether/firelord/p2/laser
execute if score @s zombie.skill_timer matches 90.. run scoreboard players set @s zombie.skill_timer 30
