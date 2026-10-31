
execute on target run tag @s add target
execute unless entity @a[tag=target,scores={stat.player=1}] run return run tag @a[tag=target] remove target

scoreboard players operation uuid zombie.uuid = @s zombie.uuid
scoreboard players set @s zombie.creation.elude 0
playsound item.shield.break record @a ~ ~ ~ 2 1
particle firework ^-0.2 ^1.5 ^0.3 0.1 0.1 0.1 0.05 5 force @a[scores={particle=0}]
summon item_display ^-0.2 ^1.5 ^0.3 {Tags:["mob.skill","skill.creation.elude.weapon","chosen"],item:{id:iron_shovel},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:1.57,axis:[0,1,0]},scale:[1,1,1],translation:[0,0,-0.25]}}
summon slime ^-0.2 ^1.5 ^0.3 {Tags:["mob","mob.skill","skill.creation.elude.weapon","chosen","hitable","nogold","tp"],Invulnerable:1b,NoAI:1b,active_effects:[{id:invisibility,show_particles:false,duration:-1}],data:{name:[{translate:zb.zombie.name.ironshovel,color:white}]}}
summon item ^-0.2 ^1.5 ^0.3 {Tags:["mob.skill","skill.creation.elude.weapon","chosen"],Item:{id:slime_ball},Age:-1,PickupDelay:-1}
effect give @n[type=slime,tag=chosen] invisibility infinite 0 true
scoreboard players set @n[type=slime,tag=chosen] zombie.health 447010
scoreboard players set @n[type=slime,tag=chosen] zombie.armor 100
scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100
scoreboard players operation @n[type=slime,tag=chosen] zombie.uuid = uuid zombie.uuid
execute as @n[type=item_display,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}] eyes
ride @n[type=item_display,tag=chosen] mount @n[type=item,tag=chosen]
ride @n[type=slime,tag=chosen] mount @n[type=item,tag=chosen]
scoreboard players set time zombie.skill.missile 40
execute as @n[type=item,tag=chosen] at @p[tag=target] run function zombie:skill/missile/start
execute as @n[type=item,tag=chosen] run function zombie:skill/creation/elude/motion with storage zombie.skill.missile root.motion
data remove storage zombie.skill.missile root
tag @e[tag=chosen] remove chosen
tag @a[tag=target] remove target
