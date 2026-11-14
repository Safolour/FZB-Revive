execute unless score round game.state matches 40 run return run function zombie:skill/nether/firelord/p2/safe_remove
execute if score @s zombie.health matches ..0 run return run function zombie:skill/nether/firelord/p2/safe_remove
execute unless score @s zombie.uuid = @s zombie.uuid run function zombie:skill/nether/firelord/p2/safe_setup
scoreboard players add @s zombie.skill_timer 1
function zombie:skill/nether/firelord/p2/safe_particle
tag @e[tag=mob,tag=!skill.firelord] remove firelord.safe.contact
execute as @e[tag=mob,tag=!skill.firelord,distance=..5.4] at @s run function zombie:skill/nether/firelord/p2/safe_mob_contact
scoreboard players reset @e[tag=mob,tag=!skill.firelord,tag=!firelord.safe.contact] fl.safe.melee
function zombie:bossbar/tick
