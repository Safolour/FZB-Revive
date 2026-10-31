
execute unless score @s zombie.creation.calamity = @s zombie.creation.calamity run scoreboard players add @s zombie.creation.calamity 0
scoreboard players operation health zombie.creation.calamity = @s zombie.health
scoreboard players operation maxhealth zombie.creation.calamity = @s zombie.max_health
scoreboard players set 100 zombie.creation.calamity 100
scoreboard players operation health zombie.creation.calamity *= 100 zombie.creation.calamity
scoreboard players operation health zombie.creation.calamity /= maxhealth zombie.creation.calamity
scoreboard players reset maxhealth zombie.creation.calamity
scoreboard players reset 100 zombie.creation.calamity
execute if score health zombie.creation.calamity matches ..50 run scoreboard players add @s zombie.creation.calamity 1
scoreboard players reset health zombie.creation.calamity
execute if score @s zombie.creation.calamity matches ..40 run return fail
execute if entity @s[tag=skill.creation.calamity.noweapon] run return fail
tag @s add skill.creation.calamity.noweapon
item replace entity @s weapon.mainhand with air
playsound item.shield.break record @a ~ ~ ~ 2 1
particle firework ^-0.2 ^1.5 ^0.3 0.1 0.1 0.1 0 5 force @a[scores={particle=0}]
summon armor_stand ^-0.2 ^1.5 ^0.3 {Tags:["mob.skill","skill.creation.calamity.weapon","chosen"],Marker:1b,Invisible:1b}
summon item_display ^-0.2 ^1.5 ^0.3 {Tags:["mob.skill","skill.creation.calamity.weapon","chosen"],item:{id:diamond_sword},transformation:{left_rotation:{angle:90,axis:[1,0,-0.7]},right_rotation:{angle:0,axis:[0,0,0]},scale:[0.8,0.8,0.8],translation:[0,0.2,0]}}
summon slime ^-0.2 ^1.5 ^0.3 {Tags:["mob","skill.creation.calamity.weapon","chosen","hitable","nogold"],Invulnerable:1b,data:{name:[{translate:zb.zombie.name.diamondsword,color:aqua}]}}
effect give @n[type=slime,tag=chosen] invisibility infinite 0 true
scoreboard players set @n[type=slime,tag=chosen] zombie.health 100000
scoreboard players set @n[type=slime,tag=chosen] zombie.max_health 100000
scoreboard players set @n[type=slime,tag=chosen] zombie.armor 100
scoreboard players set @n[type=slime,tag=chosen] zombie.knockresistance 100
execute as @n[type=armor_stand,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @a[scores={stat.player=1},sort=random,limit=1] eyes
execute as @n[type=armor_stand,tag=chosen] at @s run tp @s ~ ~-0.3 ~
ride @n[type=item_display,tag=chosen] mount @n[type=armor_stand,tag=chosen]
ride @n[type=slime,tag=chosen] mount @n[type=armor_stand,tag=chosen]
data modify entity @n[type=item_display,tag=chosen] Rotation set from entity @n[type=armor_stand,tag=chosen] Rotation
tag @e[type=item_display,tag=chosen] remove chosen
tag @e[type=armor_stand,tag=chosen] remove chosen
tag @e[type=slime,tag=chosen] remove chosen
