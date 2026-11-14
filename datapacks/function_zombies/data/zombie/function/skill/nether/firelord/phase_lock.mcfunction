function zombie:skill/nether/firelord/phase_busy
# Apply transitions before the shared mob death check, including a lethal scoreboard hit.
execute if entity @s[tag=!skill.firelord.shield.used,scores={zombie.health=..33333}] run return run function zombie:take_damage0
execute if entity @s[tag=firelord.p3,tag=!firelord.p4,scores={zombie.health=..16666}] run function zombie:take_damage0
