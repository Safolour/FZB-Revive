
#particle end_rod ~ ~0.2 ~

tag @s add zombie.skill.chaos.ultimate_chaos_zombie.lightning.range

$particle electric_spark ~ ~0.1 ~ $(rangeelectricparticle) 0 $(rangeelectricparticle) 0.2 $(rangeelectricparticlecount) force @a[scores={particle=0}]

$scoreboard players set #3d.circle.r int $(range)
scoreboard players set #3d.circle.angle int 20
#$scoreboard players set #3d.circle.angle int $(angle)

execute as b09e-44-fded-6-efa5ffffef64 run function large_number:particle/3d_ar_rotation_circle/start

execute positioned ~ ~ ~ rotated 0 90 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/0

tag @s remove zombie.skill.chaos.ultimate_chaos_zombie.lightning.range

