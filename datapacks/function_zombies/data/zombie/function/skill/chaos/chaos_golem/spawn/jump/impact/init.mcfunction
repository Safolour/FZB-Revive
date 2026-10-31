function zombie:skill/chaos/chaos_golem/spawn/jump/impact/spawn

playsound item.totem.use record @a ~ ~ ~ 2 1
playsound entity.zombie_villager.cure record @a ~ ~ ~ 2 1

particle explosion ~ ~ ~ 0 0 0 3 5 force @a[scores={particle=0}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
