execute on target run tag @s[scores={stat.player=1},gamemode=adventure] add target

summon marker ~ ~ ~ {Tags:["mob.skill","skill.disperse.missile","chosen"]}
tp @s ~ ~ ~ facing entity @a[tag=target,limit=1]
execute at @s run tp @e[type=marker,tag=chosen] ~ ~1.5 ~ ~ ~

tag @a[tag=target] remove target
tag @e[type=marker,tag=chosen] remove chosen
