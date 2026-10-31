#$say Motion:[$(0),$(1),$(2)]
$execute at @s run summon item ~ ~ ~ {Tags:["mob.skill","skill.remains.bomber.throw.0","chosen"],Item:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjU3MWJhZDQwN2UyMTg1NDIyMTZhYmQwNjQ2NmI4YTk4N2RkMTg0NWM1NzViN2Y4YTRmZTIxYWM4ZGYzIn19fQ=="}]}}},Glowing:true,Age:-1,PickupDelay:-1,Motion:[$(0),$(1),$(2)]}

execute store result score random zombie.random run random value 0..3
execute if score random zombie.random matches 0 run team join zombie.remains.bomber.crimson @n[type=item,tag=chosen]
execute if score random zombie.random matches 0 run tag @n[type=item,tag=chosen] add skill.remains.bomber.throw.crimson
execute if score random zombie.random matches 1 run team join zombie.remains.bomber.warped @n[type=item,tag=chosen]
execute if score random zombie.random matches 1 run tag @n[type=item,tag=chosen] add skill.remains.bomber.throw.warped
execute if score random zombie.random matches 2 run team join zombie.remains.bomber.ashes @n[type=item,tag=chosen]
execute if score random zombie.random matches 2 run tag @n[type=item,tag=chosen] add skill.remains.bomber.throw.ashes
execute if score random zombie.random matches 3 run team join zombie.remains.bomber.spirit @n[type=item,tag=chosen]
execute if score random zombie.random matches 3 run tag @n[type=item,tag=chosen] add skill.remains.bomber.throw.spirit

scoreboard players reset random zombie.random

tag @e[type=item,tag=chosen] remove chosen
