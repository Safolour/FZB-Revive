playsound minecraft:item.trident.thunder hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 2 0
playsound minecraft:entity.lightning_bolt.thunder hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 2 0
playsound minecraft:entity.generic.explode hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 2 0
# The visual burst is 1.1 blocks above the damage/bolt center.
particle minecraft:explosion ~ ~1.1 ~ 0 0 0 10 10 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:explosion_emitter ~ ~1.1 ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:end_rod ~ ~1.1 ~ 0 0 0 0.5 20 force @a[scores={system.room=4..,particle=0..1},distance=..80]
particle minecraft:flash ~ ~1.1 ~ 0 0 0 0 1 force @a[scores={system.room=4..,particle=0..1},distance=..80]
summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
execute if score @s origin.swings matches 3 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
execute if score @s origin.swings matches 3 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
execute if score @s origin.swings matches 3 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
execute if score @s origin.swings matches 3 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
execute if score @s origin.swings matches 3 run summon lightning_bolt ~ ~ ~ {Silent:1b,Tags:["origin.light.bolt"]}
tag @s add origin.sword.attacker
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..1.25] at @s run function zombie:skill/creation/origin/sword/hit_center
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=1.250001..5] at @s run function zombie:skill/creation/origin/sword/hit_outer
tag @s remove origin.sword.attacker
