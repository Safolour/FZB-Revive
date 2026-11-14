kill @e[tag=fzb.attr.panel]
summon text_display 14.15 -56 839.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.0"}}
summon text_display 14.15 -56.7 839.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.1"}}
summon text_display 14.15 -57.5 839.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.2"}}
summon text_display 14.15 -56.95 839.5 {Tags:["fzb.attr.panel","fzb.attr.def"],Rotation:[-90f,0f],background:0,text_opacity:-71b,shadow:1b,text:{"text":"100%","color":"#42ff00"}}
summon text_display 14.15 -56.95 840.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.100"}}
summon interaction 14.25 -56.95 840.5 {Tags:["fzb.attr.panel","fzb.attr.def.minus"],width:0.35f,height:0.3f,response:1b}
summon text_display 14.15 -56.95 838.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.101"}}
summon interaction 14.25 -56.95 838.5 {Tags:["fzb.attr.panel","fzb.attr.def.plus"],width:0.35f,height:0.3f,response:1b}
summon text_display 14.15 -57.75 839.5 {Tags:["fzb.attr.panel","fzb.attr.atk"],Rotation:[-90f,0f],background:0,text_opacity:-71b,shadow:1b,text:{"text":"100%","color":"#42ff00"}}
summon text_display 14.15 -57.75 840.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.100"}}
summon interaction 14.25 -57.75 840.5 {Tags:["fzb.attr.panel","fzb.attr.atk.minus"],width:0.35f,height:0.3f,response:1b}
summon text_display 14.15 -57.75 838.5 {Tags:["fzb.attr.panel"],Rotation:[-90f,0f],background:0,text_opacity:-46b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.101"}}
summon interaction 14.25 -57.75 838.5 {Tags:["fzb.attr.panel","fzb.attr.atk.plus"],width:0.35f,height:0.3f,response:1b}
summon text_display 14.15 -57.6 841.8 {Tags:["fzb.attr.panel","fzb.attr.warning"],Rotation:[-90f,0f],background:0,text_opacity:-71b,shadow:1b,text:{"translate":"zb.mainlobby.setting.attribute_modifier.warning.display"}}
function mainlobby:attribute_panel/update
