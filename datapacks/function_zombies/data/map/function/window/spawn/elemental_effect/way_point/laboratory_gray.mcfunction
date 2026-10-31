
kill @e[type=skeleton,tag=window_point,tag=laboratory_gray]
summon skeleton 154 45 56 {Tags:["window_point","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 159 45 65 {Tags:["window_point","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 170 45 68 {Tags:["window_point","laboratory_gray"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#team join game.player @e[type=skeleton,tag=window_point]
execute as @e[type=skeleton,tag=window_point] run attribute @s burning_time base set 0