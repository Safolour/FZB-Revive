#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_light] run function system:death

summon marker 206 41 90 {Tags:["spawner","window","laboratory_light"]}
summon marker 210 41 98 {Tags:["spawner","window","laboratory_light"]}
