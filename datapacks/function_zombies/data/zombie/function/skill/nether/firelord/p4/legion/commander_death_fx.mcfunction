summon lightning_bolt ~ ~1 ~
summon lightning_bolt ~ ~1 ~
summon lightning_bolt ~ ~1 ~
kill @e[type=item_display,tag=firelord.p2.laser_rune]
kill @e[type=marker,tag=firelord.p2.linktarget]
kill @e[type=text_display,tag=firelord.p2.icon]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle end_rod ~ ~1 ~ 0.8 1 0.8 0.2 60 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0.8 1 0.8 0.2 30 force @a[scores={particle=1}]
particle flash ~ ~4.05 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~4.05 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle end_rod ~ ~4.05 ~ 0 0 0 0.5 20 force @a[scores={particle=0}]
particle end_rod ~ ~4.05 ~ 0 0 0 0.5 10 force @a[scores={particle=1}]
particle firework ~ ~4.05 ~ 0 0 0 0.5 20 force @a[scores={particle=0}]
particle firework ~ ~4.05 ~ 0 0 0 0.5 10 force @a[scores={particle=1}]
execute positioned ~ ~1.5 ~ run function map:powerup/summon/purification
execute positioned ~1 ~1.5 ~ run function map:powerup/summon/purification
execute positioned ~-1 ~1.5 ~ run function map:powerup/summon/maxammo
