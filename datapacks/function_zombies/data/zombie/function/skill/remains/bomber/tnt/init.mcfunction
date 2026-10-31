summon slime ~ ~-1 ~ {Tags:["mob","hitable","skill.remains.bomber.tnt","chosen","nogold","cantinstakill"],NoAI:1b,NoGravity:1b,Size:0,Invulnerable:1b,data:{name:[{translate:zb.zombie.name.nethertnt,color:dark_red}]}}
scoreboard players set @n[type=slime,tag=chosen] zombie.health 1000
effect give @e[type=slime,tag=chosen] invisibility infinite 0 true

summon armor_stand ~ ~-1.65 ~ {Tags:["mob.skill","skill.remains.bomber.tnt","chosen"],Invisible:1b,equipment:{head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjU3MWJhZDQwN2UyMTg1NDIyMTZhYmQwNjQ2NmI4YTk4N2RkMTg0NWM1NzViN2Y4YTRmZTIxYWM4ZGYzIn19fQ=="}]}}}},Small:1b,Marker:1b}
effect give @e[type=armor_stand,tag=chosen] glowing infinite 0 true

scoreboard players add @e[type=slime,tag=skill.remains.bomber.tnt] zombie.remains.bomber.tntmatch 1
scoreboard players add @e[type=armor_stand,tag=skill.remains.bomber.tnt] zombie.remains.bomber.tntmatch 1

execute if entity @s[tag=skill.remains.bomber.throw.crimson] run tag @n[type=armor_stand,tag=chosen] add skill.remains.bomber.tnt.crimson
execute if entity @s[tag=skill.remains.bomber.throw.crimson] run tag @n[type=slime,tag=chosen] add skill.remains.bomber.tnt.crimson
execute if entity @s[tag=skill.remains.bomber.throw.crimson] run team join zombie.remains.bomber.crimson @n[type=armor_stand,tag=chosen]
execute if entity @s[tag=skill.remains.bomber.throw.warped] run tag @n[type=armor_stand,tag=chosen] add skill.remains.bomber.tnt.warped
execute if entity @s[tag=skill.remains.bomber.throw.warped] run tag @n[type=slime,tag=chosen] add skill.remains.bomber.tnt.warped
execute if entity @s[tag=skill.remains.bomber.throw.warped] run team join zombie.remains.bomber.warped @n[type=armor_stand,tag=chosen]
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run tag @n[type=armor_stand,tag=chosen] add skill.remains.bomber.tnt.ashes
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run tag @n[type=slime,tag=chosen] add skill.remains.bomber.tnt.ashes
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run team join zombie.remains.bomber.ashes @n[type=armor_stand,tag=chosen]
execute if entity @s[tag=skill.remains.bomber.throw.spirit] run tag @n[type=armor_stand,tag=chosen] add skill.remains.bomber.tnt.spirit
execute if entity @s[tag=skill.remains.bomber.throw.spirit] run tag @n[type=slime,tag=chosen] add skill.remains.bomber.tnt.spirit
execute if entity @s[tag=skill.remains.bomber.throw.spirit] run team join zombie.remains.bomber.spirit @n[type=armor_stand,tag=chosen]

execute if entity @s[tag=skill.remains.bomber.throw.crimson] run function zombie:skill/remains/bomber/tnt/particle/crimson
execute if entity @s[tag=skill.remains.bomber.throw.warped] run function zombie:skill/remains/bomber/tnt/particle/warped
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run function zombie:skill/remains/bomber/tnt/particle/ashes
execute if entity @s[tag=skill.remains.bomber.throw.spirit] run function zombie:skill/remains/bomber/tnt/particle/spirit

kill @s
tag @n[type=slime,tag=chosen] remove chosen
tag @e[type=armor_stand,tag=chosen] remove chosen

playsound entity.player.big_fall record @a ~ ~ ~ 1.5 1
playsound entity.tnt.primed record @a ~ ~ ~ 1.5 1
playsound block.note_block.chime
playsound block.bell.use record @a ~ ~ ~ 1 2
playsound block.amethyst_block.break record @a ~ ~ ~ 1.5 1
