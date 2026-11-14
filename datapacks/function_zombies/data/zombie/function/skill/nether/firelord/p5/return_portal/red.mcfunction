data modify storage map:r40 portal_transition set value "red"
title @a[scores={system.room=4..}] reset
title @a[scores={system.room=4..}] times 40 160 0
title @a[scores={system.room=4..}] title {text:"\uE004",font:"minecraft:screen/transition",color:"#9A0000"}
title @a[scores={system.room=4..}] subtitle ""
schedule function zombie:skill/nether/firelord/p5/return_portal/reveal 70t replace
