# Keep the click target a real chest minecart; this display only labels it.
kill @e[type=text_display,tag=setting.gear.label]
summon text_display 20.5 -56.5 845.5 {Tags:["setting.gear.label"],billboard:"center",background:0,shadow:1b,line_width:180,text:[{text:"装备领取\n",color:"gold",bold:true,italic:false},{text:"右键打开菜单",color:"gray",bold:false,italic:false}]}
