
$data merge entity @s {transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[$(r),5,$(r)],translation:[$(r0),3.3,$(r0)]}}
#$say $(r) $(r0)

$execute if score cooldown zombie.nether.guardian.shockwave matches 0 if entity @a[scores={stat.player=1},distance=$(r2)..$(r1)] run summon marker 0 ~ 0 {Tags:["shockwave","chosen"]}
$execute if score cooldown zombie.nether.guardian.shockwave matches 0 if entity @a[scores={stat.player=1},distance=$(r2)..$(r1)] as @a[scores={stat.player=1},distance=$(r2)..$(r1)] at @s run function zombie:skill/nether/guardian/warped/0/skill/attract/shockwave_detect
#$say $(r1) $(r2)



return fail
scoreboard players operation #3d.circle.r int = @s zombie.nether.guardian.shockwave0
scoreboard players operation #3d.circle.r int *= 300 number
scoreboard players set #3d.circle.angle int 100
execute as b09e-44-fded-6-efa5ffffef64 run function large_number:particle/3d_ar_rotation_circle/start
execute positioned ~ ~0.75 ~ rotated 0 90 run function large_number:particle/3d_ar_rotation_circle/particle
scoreboard players operation #3d.circle.r int = @s zombie.nether.guardian.shockwave1
scoreboard players operation #3d.circle.r int *= 300 number
scoreboard players set #3d.circle.angle int 100
execute as b09e-44-fded-6-efa5ffffef64 run function large_number:particle/3d_ar_rotation_circle/start
execute positioned ~ ~0.5 ~ rotated 0 90 run function large_number:particle/3d_ar_rotation_circle/particle
