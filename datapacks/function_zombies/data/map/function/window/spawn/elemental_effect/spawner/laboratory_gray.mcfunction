#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_gray] run function system:death

summon marker 158 46 53 {Tags:["spawner","window","laboratory_gray"]}
summon marker 156 46 61 {Tags:["spawner","window","laboratory_gray"]}
summon marker 175 46 71 {Tags:["spawner","window","laboratory_gray"]}
