
execute if score @s zombie.nuclearcreeper.explosion matches 1.. run return fail

title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 3 20 50
title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"text":""}
title @s[scores={system.room=4..,title.color.enable=0}] title {"text":"\uF002"}

scoreboard players set @s[scores={system.room=4..}] title.color.enable 74

scoreboard players set @s[scores={system.room=4..}] zombie.nuclearcreeper.explosion 1

#summon marker ~ ~ ~ {Tags:["mob.skill","skill.nuclearcreeper.explosion.player","chosen"]}
scoreboard players operation @n[type=marker,tag=chosen] zombie.nuclearcreeper.match = @s uuid
tag @e[type=marker,tag=chosen] remove chosen

execute store result storage zombie skill.damage double 0.1 run scoreboard players get nuclearcreeper zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nuclearcreeper}]
