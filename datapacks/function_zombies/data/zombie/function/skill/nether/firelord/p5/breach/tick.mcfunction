# Independent P5 clock continues after closing the gate.
execute if data storage map:r40 p5_breached run return 0
scoreboard players add #p5_breach area.temperature 1
execute if score #p5_breach area.temperature matches 350 run function zombie:skill/nether/firelord/p5/breach/impact
execute if score #p5_breach area.temperature matches 400 run function zombie:skill/nether/firelord/p5/breach/impact
execute if score #p5_breach area.temperature matches 420 run function zombie:skill/nether/firelord/p5/breach/warn
execute if score #p5_breach area.temperature matches 450 run function zombie:skill/nether/firelord/p5/breach/impact
execute if score #p5_breach area.temperature matches 500 run function zombie:skill/nether/firelord/p5/breach/impact
execute if score #p5_breach area.temperature matches 550 run function zombie:skill/nether/firelord/p5/breach/finish
