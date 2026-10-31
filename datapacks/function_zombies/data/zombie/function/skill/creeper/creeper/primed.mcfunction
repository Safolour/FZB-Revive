effect give @s slowness infinite 255 true
#data merge entity @s {NoAI:1b}
tag @s add skill.creeper.primed
data merge entity @n[type=creeper,tag=target] {Fuse:30,ignited:true,NoAI:0b}
playsound entity.creeper.primed record @a ~ ~ ~ 1 1
