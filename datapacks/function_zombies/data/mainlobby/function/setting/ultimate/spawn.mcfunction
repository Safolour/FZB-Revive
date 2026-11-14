function mainlobby:setting/ultimate/reset
# DD 2026-07-04: width 2, height 1.25; labels at +1.75 / +1.40.
summon interaction 14.5 -59 845.5 {Tags:["setting.ultimate","interactable"],width:2f,height:1.25f,response:1b,Rotation:[90f,0f]}
summon armor_stand 14.5 -57.25 845.5 {Tags:["setting.ultimate.label"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{translate:"zb.shop.ultimatemachine"}}
summon armor_stand 14.5 -57.6 845.5 {Tags:["setting.ultimate.label"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{text:"右键强化",color:"gray",italic:false}}
