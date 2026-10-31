#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_blue] run function system:death

summon marker 146 44 64 {Tags:["spawner","window","laboratory_blue"]}
summon marker 134 44 85 {Tags:["spawner","window","laboratory_blue"]}
summon marker 146 46 90 {Tags:["spawner","window","laboratory_blue"]}
