#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_yellow] run function system:death

summon marker 130 41 52 {Tags:["spawner","window","laboratory_yellow"]}
