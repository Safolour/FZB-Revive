
#tellraw @a [{nbt:"Pos",entity:"@n[type=marker,tag=shockwave,tag=chosen]"}]
execute positioned 0 ~ 0 if entity @e[type=marker,tag=shockwave,tag=chosen,distance=..1] at @s run function zombie:skill/nether/guardian/warped/0/skill/attract/damage
kill @e[type=marker,tag=shockwave,tag=chosen]
