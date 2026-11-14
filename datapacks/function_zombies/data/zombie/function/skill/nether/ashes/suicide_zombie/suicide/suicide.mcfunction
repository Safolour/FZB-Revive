tag @s add skill.suicidezombie.death
tag @s remove hitable
scoreboard players reset @s zombie.nether.ashes.suicidezombie
data merge entity @s {NoAI:1b,Invulnerable:1b,Silent:1b}
tp @s ~ ~ ~ ~ -70
effect give @s invisibility infinite 0 true

playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0
playsound block.note_block.pling record @a ~ ~ ~ 1.5 2
playsound entity.wither.death hostile @a ~ ~ ~ 2 0

summon item_display ~ ~ ~ {Tags:["mob.skill","skill.suicidezombie.ring","skill.suicidezombie.ring.new"],item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"custom:suicide"}},transformation:{translation:[0f,1.8f,0f],scale:[5.3f,3f,5.3f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[type=item_display,tag=skill.suicidezombie.ring.new,sort=nearest,limit=1,distance=..1] zombie.uuid = @s zombie.uuid
tag @e[type=item_display,tag=skill.suicidezombie.ring.new,sort=nearest,limit=1,distance=..1] remove skill.suicidezombie.ring.new

execute if entity @a[scores={stat.player=1},distance=..5] as @a[scores={stat.player=1},distance=..5] run function zombie:skill/nether/ashes/suicide_zombie/suicide/warning
