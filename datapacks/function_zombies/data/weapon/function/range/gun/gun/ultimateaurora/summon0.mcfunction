scoreboard players add @s weapon.gun_shot 1
scoreboard players set color weapon.range 0
execute anchored eyes run summon marker ^ ^ ^ {"Tags":["gun","ultimateaurora","chosen_new","aurora_proj"],"data":{"gun":"ultimateaurora","hits":[],"beam":0}}
execute as @e[tag=chosen_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] facing ^0 ^0 ^1 run function weapon:range/gun/gun/ultimateaurora/loop
tag @e[tag=chosen_new] remove chosen_new
execute anchored eyes positioned ^ ^ ^1.5 run particle firework ~ ~ ~ 0 0 0 0.1 4 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
