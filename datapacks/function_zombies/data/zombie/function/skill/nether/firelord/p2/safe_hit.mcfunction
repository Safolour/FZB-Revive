scoreboard players operation @s zombie.health -= #shielddamage zombie.health
playsound block.anvil.land hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 2
execute if score @s zombie.health matches ..0 run return run function zombie:skill/nether/firelord/p2/safe_remove
function zombie:bossbar/if_health
