attribute @s scale base set 3

execute positioned ~ ~-3 ~ run function zombie:skill/machine/lamda/spawn/jump/impact/init

playsound entity.player.big_fall record @a ~ ~ ~ 2 1
playsound item.trident.thunder record @a ~ ~ ~ 2 0

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
