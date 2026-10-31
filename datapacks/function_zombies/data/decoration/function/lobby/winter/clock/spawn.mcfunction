execute as @e[tag=lobby.winter.clock] run function system:death

#summon text_display 1124 127 651.0 {Tags:["lobby.winter.clock.text1","lobby.winter.clock"],text:'XII',transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[180f,90f],brightness:{block:15,sky:15}}
#summon text_display 1115.0 127 660 {Tags:["lobby.winter.clock.text2","lobby.winter.clock"],text:'III',transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[90f,90f],brightness:{block:15,sky:15}}
#summon text_display 1124 127 670.0 {Tags:["lobby.winter.clock.text3","lobby.winter.clock"],text:'VI',transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[0f,90f],brightness:{block:15,sky:15}}
#summon text_display 1134.0 127 660 {Tags:["lobby.winter.clock.text2","lobby.winter.clock"],text:'IX',transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[-90f,90f],brightness:{block:15,sky:15}}

summon text_display 1124 127 651.0 {Tags:["lobby.winter.clock.text3","lobby.winter.clock"],text:[{text:"VI"}],transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[180f,90f],brightness:{block:15,sky:15}}
summon text_display 1115.0 127 660 {Tags:["lobby.winter.clock.text4","lobby.winter.clock"],text:[{text:"IX"}],transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[90f,90f],brightness:{block:15,sky:15}}
summon text_display 1124 127 670.0 {Tags:["lobby.winter.clock.text1","lobby.winter.clock"],text:[{text:"XII"}],transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[0f,90f],brightness:{block:15,sky:15}}
summon text_display 1134.0 127 660 {Tags:["lobby.winter.clock.text2","lobby.winter.clock"],text:[{text:"III"}],transformation:[5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,5f,0f,0f,0f,0f,1f],background:1,Rotation:[-90f,90f],brightness:{block:15,sky:15}}

summon marker 1124 127.5 660 {Tags:["lobby.winter.clock","lobby.winter.clock.pointer","lobby.winter.clock.pointer1"]}
summon marker 1124 127.5 660 {Tags:["lobby.winter.clock","lobby.winter.clock.pointer","lobby.winter.clock.pointer2"]}
summon marker 1124 127.5 660 {Tags:["lobby.winter.clock","lobby.winter.clock.pointer","lobby.winter.clock.pointer3"]}

function decoration:lobby/winter/clock/time_calibration