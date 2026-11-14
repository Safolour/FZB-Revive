# Each remaining crimson ring represents one unresolved red/blue pair.
execute store result score #circle_failed_pairs firelord.circle run execute if entity @e[type=item_display,tag=firelord.circle.crimson]
tellraw @a[scores={stat.player=1},gamemode=adventure] {translate:"zb.zombie.firelord.2.2"}
# The recording has an extinguish sound at the boss's unresolved ring.
execute if entity @s[tag=firelord.circle.r2] if entity @e[type=item_display,tag=firelord.circle.r2] at @s run playsound minecraft:block.fire.extinguish hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
execute if entity @s[tag=firelord.circle.b2] if entity @e[type=item_display,tag=firelord.circle.b2] at @s run playsound minecraft:block.fire.extinguish hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
execute as @e[type=item_display,tag=firelord.circle.model] at @s run function zombie:skill/nether/firelord/circle/fail_ring
execute as @a[scores={stat.player=1},gamemode=adventure] at @s run function zombie:skill/nether/firelord/circle/fail_player
scoreboard players operation #circle_heat area.temperature = #circle_failed_pairs firelord.circle
scoreboard players operation #circle_heat area.temperature *= 3 number
execute unless data storage map:r40 p5_closed run scoreboard players operation temperature0 area.temperature += #circle_heat area.temperature
function map:area/lab/temperature/update
function zombie:skill/nether/firelord/circle/end
