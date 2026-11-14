execute if entity @s[tag=firelord.p4.legion.wave3] run return run function zombie:skill/nether/firelord/p4/legion/particle3
execute if entity @s[tag=firelord.p4.legion.wave1] run return run function zombie:skill/nether/firelord/p4/legion/particle1
execute if entity @s[tag=firelord.p4.legion.wave2] run return run function zombie:skill/nether/firelord/p4/legion/particle2
execute if entity @s[tag=firelord.p2.spawn.wave2] run function zombie:skill/nether/firelord/p2/wave2_trail_particle
execute unless entity @s[tag=firelord.p2.spawn.wave2] run function zombie:skill/nether/firelord/p2/wave_trail_particle
