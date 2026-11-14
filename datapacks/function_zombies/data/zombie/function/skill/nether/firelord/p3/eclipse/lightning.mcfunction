execute unless entity @s[tag=firelord.eclipse.redscreen] run function zombie:skill/nether/firelord/p3/eclipse/redscreen
particle explosion ~ ~ ~ 2 1 2 0 3 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 2 1 2 0 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 2 1 2 0 1 force @a[scores={particle=1}]
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~
playsound entity.generic.explode hostile @a[scores={system.room=4..}] ~ ~ ~ 2 0
