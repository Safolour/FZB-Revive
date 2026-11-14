execute unless data storage map:r40 p5_closed run return 0
execute unless data storage map:r40 portal_transition run return 0
title @a[scores={system.room=4..}] reset
execute if data storage map:r40 {portal_transition:"red"} run title @a[scores={system.room=4..}] times 0 5 30
execute if data storage map:r40 {portal_transition:"red"} run title @a[scores={system.room=4..}] title {text:"\uE000",font:"minecraft:screen/transition",color:"#9A0000"}
execute if data storage map:r40 {portal_transition:"purple"} run title @a[scores={system.room=4..}] times 0 5 30
execute if data storage map:r40 {portal_transition:"purple"} run title @a[scores={system.room=4..}] title {text:"\uE000",font:"minecraft:screen/transition",color:"#8900CE"}
title @a[scores={system.room=4..}] subtitle ""
schedule function zombie:skill/nether/firelord/p5/return_portal/finish 2t replace
