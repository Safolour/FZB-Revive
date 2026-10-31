execute on target if entity @s[type=player,scores={stat.player=1}] run tag @s add target

scoreboard players set time zombie.skill.missile 25
execute at @a[tag=target] positioned ~ ~1 ~ run function zombie:skill/missile/start

summon marker ~ ~1.5 ~ {Tags:["mob.skill","skill.bomber.throw.throwtnt","chosen"]}
execute as @e[type=marker,tag=chosen] run function zombie:skill/electric/tnt/throw/throw/item with storage zombie.skill.missile root.motion

kill @e[type=marker,tag=chosen]

tag @a remove target


particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0 30 force @a[scores={particle=0}]

playsound entity.snowball.throw record @a ~ ~ ~ 2 1
