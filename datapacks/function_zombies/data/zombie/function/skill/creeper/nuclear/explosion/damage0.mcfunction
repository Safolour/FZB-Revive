
title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 3 20 50
title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"text":""}
title @s[scores={system.room=4..,title.color.enable=0}] title {"text":"\uF002"}

scoreboard players set @s[scores={system.room=4..}] title.color.enable 74

execute store result storage zombie skill.damage double 0.1 run scoreboard players get nuclearcreeper0 zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nuclearcreeper}]
