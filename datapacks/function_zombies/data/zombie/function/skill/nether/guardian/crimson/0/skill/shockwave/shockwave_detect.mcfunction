
#tellraw @a [{nbt:"Pos",entity:"@n[type=marker,tag=shockwave,tag=chosen]"}]
execute positioned 0 ~ 0 if entity @e[type=marker,tag=shockwave,tag=chosen,distance=..1] run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/damage
kill @e[type=marker,tag=shockwave,tag=chosen]
