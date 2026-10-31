execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:player_display/summon {args: {}}

$data modify storage zombie player.name set value $(name)

scoreboard players set slim zombie.player 0
$scoreboard players set slim zombie.player $(slim)

#summon armor_stand ~ ~ ~ {Tags:["playerdisplay.armor.0"],equipment:{head:{id:"air"},chest:{id:"air"},mainhand:{id:"wooden_sword"},offhand:{id:wooden_sword}},Marker:1b,Invisible:0b,Pose:{Head:[-90,0,0],Body:[-90,0,0],LeftArm:[-100,0,-10],RightArm:[-100,0,10]},ShowArms:1b}
#summon armor_stand ~ ~ ~ {Tags:["playerdisplay.armor.1"],equipment:{legs:{id:"leather_leggings"},feet:{id:"leather_boots"}},Marker:1b,Invisible:0b}





tag @n[type=item_display,tag=aj.player_display.root] add chosen
scoreboard players add @e[type=item_display,tag=aj.player_display.root] zombie.player 1
execute as @n[type=item_display,tag=aj.player_display.root,tag=chosen] run function _test:player1 with storage zombie player

execute as @n[type=item_display,tag=chosen,tag=aj.player_display.root] run function animated_java:player_display/animations/swing/play

tag @e[type=item_display,tag=chosen] remove chosen
