
tag @e[type=marker,tag=spawner,tag=magma,limit=1,sort=random] add target
execute as @n[type=marker,tag=target] at @s run function zombie:skill/creeper/nuclearbomb/spawn
tag @e[type=marker,tag=target] remove target

title @a[scores={system.room=4..,title.color.enable=0}] reset
title @a[scores={system.room=4..,title.color.enable=0}] times 0 100 0
title @a[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.zombie.laser"}
title @a[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.zombie.nuclearbomb.title.0"}

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.2"}
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.0"}
function zombie:skill/creeper/nuclearbomb/tellraw/0 with storage zombie nuclearbomb
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.5"}
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.nuclearbomb.tellraw.1"}

data remove storage zombie nuclearbomb

scoreboard players set @a[scores={system.room=4..}] zombie.nuclearbomb 0

worldborder warning distance 1000000000
