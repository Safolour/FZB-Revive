scoreboard players operation #p5_leadx area.temperature = @s p5.velx
scoreboard players operation #p5_leadx area.temperature *= #p5_lead area.temperature
scoreboard players operation #p5_leadz area.temperature = @s p5.velz
scoreboard players operation #p5_leadz area.temperature *= #p5_lead area.temperature
execute store result storage map:p5 aim.x double 0.001 run scoreboard players get #p5_leadx area.temperature
execute store result storage map:p5 aim.z double 0.001 run scoreboard players get #p5_leadz area.temperature
function zombie:skill/nether/firelord/p5/hazards/ray_aim_spawn with storage map:p5 aim
