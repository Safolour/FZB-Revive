playsound minecraft:block.anvil.land hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
# Cosmetic bolts use the existing server-side isolation from actual lightning damage.
summon lightning_bolt ~ ~ ~ {Tags:["origin.light.bolt"]}
summon lightning_bolt ~ ~ ~ {Tags:["origin.light.bolt"]}
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..5] at @s run function zombie:skill/creation/titan/sword/hit
function zombie:skill/creation/titan/sword/cleanup
