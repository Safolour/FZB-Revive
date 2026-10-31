
scoreboard players operation damage zombie.resonance = creation.resonance zombie.skill.damage
scoreboard players operation damage zombie.resonance *= count zombie.resonance

execute store result storage zombie skill.damage double 0.1 run scoreboard players get damage zombie.resonance
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.resonance}]

effect give @s slowness 1 4 false
effect give @s slowness 2 3 false
effect give @s slowness 3 2 false
effect give @s slowness 4 1 false
effect give @s slowness 5 0 false
effect give @s blindness 1 0 true
effect give @s nausea 6 0 false

particle firework ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute positioned ~ ~1 ~ run function zombie:skill/creation/resonance/particle/0

title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 0 0 40
title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"text":""}
title @s[scores={system.room=4..,title.color.enable=0}] title {"text":"\uF002"}
scoreboard players set @s[scores={system.room=4..,title.color.enable=0}] title.color.enable 41
