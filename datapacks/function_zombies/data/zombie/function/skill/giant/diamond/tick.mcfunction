scoreboard players add @s zombie.diamondgiant 1
execute if score @s zombie.diamondgiant matches ..100 run return fail

scoreboard players set @s zombie.diamondgiant 0
execute on target if entity @s[type=player,scores={stat.player=1},distance=..25] run tag @s add target

execute unless entity @a[tag=target] run return fail

execute if entity @s[tag=skill.diamondgiant.nosword] run return run tag @a[tag=target] remove target

tag @s add skill.diamondgiant.nosword
item replace entity @s weapon.mainhand with air
playsound entity.snowball.throw record @a ~ ~ ~ 2 0
playsound entity.snowball.throw record @a ~ ~ ~ 2 0
playsound entity.snowball.throw record @a ~ ~ ~ 2 0

execute rotated as @s anchored eyes positioned ^-3 ^-2 ^5 run summon marker ~ ~ ~ {Tags:["mob.skill","skill.diamondgiant.sword","chosen"]}
execute rotated as @s anchored eyes positioned ^-3 ^-2 ^5 run summon item_display ~ ~ ~ {Tags:["mob.skill","skill.diamondgiant.sword","chosen"],item:{id:diamond_sword,count:1b},transformation:{left_rotation:{angle:90,axis:[0,0,1.3]},right_rotation:{angle:0,axis:[0,0,0]},scale:[4,4,4],translation:[0,0,0]}}

execute as @e[type=marker,tag=chosen] at @s run tp @s ~ ~ ~ facing entity @p[tag=target]
execute as @e[type=marker,tag=chosen] at @s run tp @s ~ ~1.5 ~ ~ ~

data modify entity @n[type=item_display,tag=chosen] Rotation set from entity @n[type=marker,tag=chosen] Rotation

scoreboard players add @e[type=marker,tag=skill.diamondgiant.sword] zombie.diamondgiant.match 1
scoreboard players add @e[type=item_display,tag=skill.diamondgiant.sword] zombie.diamondgiant.match 1

tag @e[type=marker,tag=chosen] remove chosen
tag @a remove target
