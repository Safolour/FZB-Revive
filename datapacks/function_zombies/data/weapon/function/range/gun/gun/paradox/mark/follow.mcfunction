$execute unless entity @e[nbt={UUID:$(target)},tag=mob,tag=!paradox.captive,scores={zombie.health=1..}] run return run kill @s
$execute at @e[nbt={UUID:$(target)},limit=1] run tp @s ~ ~ ~
execute at @s run particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.592157,0.0,0.772549],scale:0.9} ~ ~1 ~ 0.2 0.3 0.2 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
