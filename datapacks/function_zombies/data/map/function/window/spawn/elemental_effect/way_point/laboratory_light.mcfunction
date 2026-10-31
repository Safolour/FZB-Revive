
kill @e[type=skeleton,tag=window_point,tag=laboratory_light]
summon skeleton 210 40 93 {Tags:["window_point","laboratory_light"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
summon skeleton 214 40 101 {Tags:["window_point","laboratory_light"],PersistenceRequired:true,NoAI:1b,Silent:1b,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}]}
#team join game.player @e[type=skeleton,tag=window_point]
execute as @e[type=skeleton,tag=window_point] run attribute @s burning_time base set 0