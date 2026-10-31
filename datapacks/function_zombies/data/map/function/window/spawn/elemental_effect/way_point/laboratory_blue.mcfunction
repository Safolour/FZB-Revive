
kill @e[type=skeleton,tag=window_point,tag=laboratory_blue]
summon skeleton 141 43 67 {Tags:["window_point","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 137 43 80 {Tags:["window_point","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 147 45 86 {Tags:["window_point","laboratory_blue"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#team join game.player @e[type=skeleton,tag=window_point]
execute as @e[type=skeleton,tag=window_point] run attribute @s burning_time base set 0