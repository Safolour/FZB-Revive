execute in minecraft:overworld run kill @e[type=zombie,tag=skill.firelord]
execute in minecraft:overworld run kill @e[type=ghast,tag=firelord.p2.ghast]
execute in minecraft:overworld run kill @e[type=marker,tag=firelord.p2.ghast.target]
data modify storage map:r40 r41_cleaned set value 1b
kill @e[type=marker,tag=firelord.p5.chase.target]
