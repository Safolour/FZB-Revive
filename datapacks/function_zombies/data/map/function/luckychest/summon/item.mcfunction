
kill @e[tag=luckychest,tag=item]
summon item ~ ~1 ~ {NoGravity:1b,PickupDelay:-1,Age:-32768,Item:{id:"structure_void",count:1},Tags:["luckychest","item"]}
function map:luckychest/trigger/random_item