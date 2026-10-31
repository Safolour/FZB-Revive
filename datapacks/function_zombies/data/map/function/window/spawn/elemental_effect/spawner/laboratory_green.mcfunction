#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_green] run function system:death

summon marker 167 46 73 {Tags:["spawner","window","laboratory_green"]}
summon marker 174 46 75 {Tags:["spawner","window","laboratory_green"]}
