execute unless score round game.state matches 40 run particle explosion ~ ~0.5 ~
execute if score round game.state matches 40 run particle explosion ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle block{block_state:"stone"} ~ ~0.5 ~ 0.5 0.5 0.5 0 64 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle block{block_state:"stone"} ~ ~0.5 ~ 0.5 0.5 0.5 0 64 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle block{block_state:"stone"} ~ ~0.5 ~ 0.5 0.5 0.5 0 32 force @a[scores={particle=1}]

playsound entity.zombie.break_wooden_door record @a ~ ~ ~ 0.5 1

setblock ~ ~ ~ lava replace
kill @s
