particle dust_color_transition{from_color:[0.0,0.5569,0.7569],to_color:[0.4,0.7608,1.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle sculk_soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.0,0.5569,0.7569],to_color:[0.4,0.7608,1.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle sculk_soul ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
