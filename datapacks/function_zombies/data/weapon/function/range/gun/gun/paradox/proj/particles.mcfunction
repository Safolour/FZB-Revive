# Both packets occur at the head and at a 0.35-block trailing point in the observer replay.
particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
particle dust_color_transition{from_color:[0.482353,0.0,1.0],to_color:[0.0,0.015686,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
particle dragon_breath ^ ^ ^-0.35 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
particle dust_color_transition{from_color:[0.482353,0.0,1.0],to_color:[0.0,0.015686,1.0],scale:1.0} ^ ^ ^-0.35 0 0 0 0 1 force @a[scores={gun.particle=0..1},predicate=weapon:gun_particle_quality]
