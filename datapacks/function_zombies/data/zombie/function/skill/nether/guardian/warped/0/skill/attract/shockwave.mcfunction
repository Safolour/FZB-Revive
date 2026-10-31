effect clear @s glowing

playsound entity.warden.sonic_charge record @a ~ ~ ~ 10 0.8
playsound entity.evoker.prepare_attack record @a ~ ~ ~ 10 0

particle trial_spawner_detection_ominous ~ ~1 ~ 2 2 2 0 20 force @a[scores={particle=0}]

particle ominous_spawning ~ ~1 ~ 0 0 0 0.5 20 force @a[scores={particle=0}]

summon item_display ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.attract","chosen"],transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0,0,0],translation:[0,0,0]},item:{id:stone,components:{item_model:"custom:warped_circle"}}}

scoreboard players set @n[type=item_display,tag=chosen] zombie.nether.guardian.shockwave 160

tag @e[type=item_display,tag=chosen] remove chosen
