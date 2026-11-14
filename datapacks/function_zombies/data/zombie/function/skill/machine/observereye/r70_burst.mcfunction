# Client lightning supplies the spatial thunder and impact. The originvisual mod isolates these bolts server-side.
summon minecraft:lightning_bolt ~ ~ ~ {Tags:["origin.light.bolt"]}
summon minecraft:lightning_bolt ~ ~ ~ {Tags:["origin.light.bolt"]}
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0}]
particle minecraft:firework ~ ~ ~ 0 0 0 0.2 50 force @a[scores={system.room=4..,particle=0}]
