execute on target if entity @s[type=player,scores={stat.player=1},distance=..20] run tag @s add target
execute unless entity @a[tag=target] run return 0

execute if entity @a[tag=target,distance=..10] run effect give @s slowness 1 255 true

execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
playsound entity.allay.hurt record @a ~ ~ ~ 1.5 2
playsound minecraft:entity.arrow.shoot

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedskeleton","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] run tp @s ~ ~1.5 ~
tag @e[type=marker,tag=chosen] remove chosen
tag @a[tag=target] remove target


