effect clear @s glowing

particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 5 5 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.5 100 force @a[scores={particle=0}]

playsound item.totem.use record @a ~ ~ ~ 3 1.4

summon item_display ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.shockwave"],transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0,0,0],translation:[0,0,0]},item:{id:stone,components:{item_model:"custom:crimson_circle"}}}
