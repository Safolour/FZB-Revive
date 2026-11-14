particle dust_color_transition{from_color:[0.7804,0.1569,0.0039],to_color:[1.0,0.6471,0.1294],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.7804,0.1569,0.0039],to_color:[1.0,0.6471,0.1294],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
