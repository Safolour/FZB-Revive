function zombie:zombie/nether/ashes/melt_zombie/0
tag @e[type=zombie,tag=mob,distance=..1,sort=nearest,limit=1,tag=!firelord.p2.wave1] add firelord.p2.wave1
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound entity.evoker.prepare_summon hostile @a[scores={system.room=4..}] ~ ~1 ~ 1.5 1
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
