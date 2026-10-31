
effect give @s speed 3 0 false
effect give @s absorption 3 0 false
effect give @s instant_health 1 0 true

function map:area/lab/reaction/fire/effect/extra/add/ashes

function map:area/lab/reaction/fire/effect/extra/particle/positive/ashes

execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute at @s run playsound entity.player.levelup ambient @a ~ ~ ~ 1 2
