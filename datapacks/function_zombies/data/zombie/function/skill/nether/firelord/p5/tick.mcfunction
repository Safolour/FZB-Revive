scoreboard players add #p5_timer area.temperature 1
execute if score #p5_timer area.temperature matches 22 run function zombie:skill/nether/firelord/p5/switch_spawn
execute if score #p5_timer area.temperature matches 20 run function zombie:skill/nether/firelord/p5/warn
execute if score #p5_timer area.temperature matches 60 run function zombie:skill/nether/firelord/p5/warn2
execute if score #p5_timer area.temperature matches 400.. run return run function zombie:skill/nether/firelord/p5/fail
execute if score lab_core door.open matches 1 unless data storage map:r40 p5_guide_spawned run function zombie:skill/nether/firelord/p5/guide_spawn
execute if score lab_core door.open matches 1 unless data storage map:r40 p5_door_warned run function zombie:skill/nether/firelord/p5/check_inside
execute if score lab_core door.open matches 1 if score #p5_timer area.temperature matches 300.. unless data storage map:r40 p5_door_warned run function zombie:skill/nether/firelord/p5/door_warn
execute if score lab_core door.open matches 1 if block 300 88 196 minecraft:lever[powered=true] run function zombie:skill/nether/firelord/p5/close
