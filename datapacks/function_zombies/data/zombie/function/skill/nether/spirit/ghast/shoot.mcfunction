playsound entity.ghast.shoot record @a ~ ~ ~ 2 1

summon marker ~ ~ ~ {Tags:["mob.skill","skill.spiritghast.fireball","chosen"]}
tp @n[type=marker,tag=chosen] ~ ~ ~ facing entity @p[scores={stat.player=1}]

tag @e[type=marker,tag=chosen] remove chosen
