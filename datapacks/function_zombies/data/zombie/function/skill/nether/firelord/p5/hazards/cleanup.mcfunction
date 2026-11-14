execute as @a[tag=p5.lava_float] run function zombie:skill/nether/firelord/p5/hazards/lava_unfloat
function zombie:skill/nether/firelord/p5/hazards/lava_water_cleanup
execute as @e[type=minecraft:marker,tag=p5.floor,scores={area.temperature=16..}] at @s run function zombie:skill/nether/firelord/p5/hazards/floor_restore
kill @e[tag=p5.hazard]

