particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[1.0,0.98,0.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[1.0,0.98,0.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
