playsound entity.player.big_fall record @a ~ ~ ~ 2 1
playsound item.trident.thunder record @a ~ ~ ~ 2 0
playsound item.totem.use record @a ~ ~ ~ 2 1

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~ ~ 0 0 0 3 5 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

function zombie:skill/machine/lamda/skill/hit_ground/impact/init
