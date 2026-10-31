execute on target run tag @s[scores={stat.player=1},gamemode=adventure] add target
execute unless entity @a[tag=target,scores={stat.player=1},distance=..15,gamemode=adventure] run return run tag @a[tag=target] remove target

particle end_rod ~ ~1 ~ 0 0 0 0.08 3 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]

playsound item.trident.throw record @a ~ ~ ~ 1.5 1
playsound entity.puffer_fish.blow_out record @a ~ ~ ~ 1.5 1

tag @a[tag=target] remove target

function zombie:skill/electric/aircraft/obviate/missile/init

