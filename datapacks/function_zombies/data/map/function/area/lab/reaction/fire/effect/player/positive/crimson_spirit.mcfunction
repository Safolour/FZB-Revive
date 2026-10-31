
effect give @s instant_health 1 1 true
effect give @s absorption 3 0 false

function map:area/lab/reaction/fire/effect/extra/add/player_positive

execute at @s run particle heart ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute at @s run playsound entity.player.levelup ambient @a ~ ~ ~ 1 2
