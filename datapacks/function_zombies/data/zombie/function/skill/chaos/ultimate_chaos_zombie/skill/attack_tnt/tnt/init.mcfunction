kill @s

particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
playsound entity.tnt.primed record @a ~ ~ ~ 2 1
playsound entity.player.big_fall record @a ~ ~ ~ 2 1

function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/tnt/spawn
