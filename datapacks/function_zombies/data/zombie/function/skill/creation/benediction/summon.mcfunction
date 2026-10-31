
execute on target run tag @s add target
execute unless entity @a[tag=target,scores={stat.player=1},distance=..15] run return run tag @a[tag=target] remove target
tag @a[tag=target] remove target
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
tag @s add skill.creation.benediction.noweapon
scoreboard players set @s zombie.creation.benediction 0
item replace entity @s weapon.mainhand with air
playsound item.shield.break record @a ~ ~ ~ 2 1
particle firework ^-0.2 ^1.5 ^0.3 0.1 0.1 0.1 0 5 force @a[scores={particle=0}]
summon item_display ^-0.2 ^1.5 ^0.3 {Tags:["mob.skill","skill.creation.benediction.weapon","chosen"],item:{id:diamond_pickaxe},transformation:{left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.8,0.8,0.8],translation:[0,0,-0.25]}}
summon slime ^-0.2 ^1.5 ^0.3 {Tags:["mob","mob.skill","skill.creation.benediction.weapon","chosen","hitable","nogold","tp"],Invulnerable:1b,NoAI:1b,active_effects:[{id:invisibility,show_particles:false,duration:-1}],data:{name:[{translate:zb.zombie.name.diamondpickaxe,color:aqua}]}}
effect give @n[type=slime,tag=chosen] invisibility infinite 0 true
scoreboard players set @n[type=slime,tag=chosen] zombie.health 447010
scoreboard players set @n[type=slime,tag=chosen] zombie.armor 100
scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100
scoreboard players operation @n[type=slime,tag=chosen] zombie.uuid = uuid zombie.uuid
ride @n[type=item_display,tag=chosen] mount @n[type=slime,tag=chosen]
rotate @n[type=item_display,tag=chosen] 0 -90
execute as @n[type=slime,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}] eyes
tag @e[type=item_display,tag=chosen] remove chosen
tag @e[type=slime,tag=chosen] remove chosen
