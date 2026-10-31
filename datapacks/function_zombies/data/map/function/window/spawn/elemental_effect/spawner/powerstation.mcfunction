#刷怪点
execute as @e[type=marker,tag=spawner,tag=powerstation] run function system:death

summon marker 116 44 57 {Tags:["spawner","window","powerstation"]}
summon marker 124 44 57 {Tags:["spawner","window","powerstation"]}
summon marker 112 44 91 {Tags:["spawner","window","powerstation"]}
