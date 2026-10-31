#刷怪点
execute as @e[type=marker,tag=spawner,tag=laboratory_shadow] run function system:death

summon marker 210 53 45 {Tags:["spawner","window","laboratory_shadow"]}
summon marker 232 53 42 {Tags:["spawner","window","laboratory_shadow"]}
