particle dust_color_transition{from_color:[0.0,0.7333,1.0],to_color:[0.2549,1.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.0,0.7333,1.0],to_color:[0.2549,1.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
