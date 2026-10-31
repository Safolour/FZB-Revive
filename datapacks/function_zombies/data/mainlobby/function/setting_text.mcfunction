
kill @e[type=armor_stand,tag=setting]

summon armor_stand 10 -59.25 835 {Tags:["setting","head","_447"],Rotation:[180,0],Marker:1b,Invisible:1b,equipment:{head:{id:player_head,count:1,components:{profile:"_447"}}}}
summon armor_stand 8 -59.25 835 {Tags:["setting","head","xmm010"],Rotation:[180,0],Marker:1b,Invisible:1b,equipment:{head:{id:player_head,count:1,components:{profile:"XMM010"}}}}

summon armor_stand 10 -57.25 835 {Tags:["setting","head"],CustomName:[{text:"§f_447§r"}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
summon armor_stand 8 -57.25 835 {Tags:["setting","head"],CustomName:[{text:"§fXMM010§r"}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
summon armor_stand 9 -57 835 {Tags:["setting","head"],CustomName:[{translate:zb.mainlobby.setting.creator}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
summon armor_stand 9 -58.5 835 {Tags:["setting","head"],CustomName:[{translate:zb.mainlobby.setting.thanks}],Marker:1b,Invisible:1b,CustomNameVisible:1b}

summon armor_stand 9 -56.75 830 {Tags:["setting","text","text0"],CustomName:[{translate:zb.mainlobby.setting.0}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
execute if score tick system.stat matches 1 run return run summon armor_stand 9 -57.125 830 {Tags:["setting","text","text1"],CustomName:[{translate:zb.mainlobby.setting.1}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
summon armor_stand 9 -57.125 830 {Tags:["setting","text","text1"],CustomName:[{translate:zb.mainlobby.setting.2}],Marker:1b,Invisible:1b,CustomNameVisible:1b}
