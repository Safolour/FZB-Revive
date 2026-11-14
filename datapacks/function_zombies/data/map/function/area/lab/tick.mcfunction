#system
function map:area/lab/floor/tick
function map:area/lab/temperature/tick
function map:area/lab/monhan/tick

# 保存并恢复玻璃罐中的武器。
execute as @e[type=interaction,tag=area.lab.showcase.display,scores={area.showcase=1}] at @s run function map:area/lab/monhan/showcase/maintain
execute if data storage map:r40 terminals as @e[type=interaction,tag=fl.busy] run function zombie:skill/nether/firelord/p5/terminal/busy_tick
