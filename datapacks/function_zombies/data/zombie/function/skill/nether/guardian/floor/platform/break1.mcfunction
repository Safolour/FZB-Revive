particle explosion ~ ~0.5 ~
particle block{block_state:"stone"} ~ ~0.5 ~ 0.5 0.5 0.5 0 64 force @a[scores={particle=0}]

playsound entity.zombie.break_wooden_door record @a ~ ~ ~ 0.5 1

setblock ~ ~ ~ lava replace
kill @s
