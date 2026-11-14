# Ephemeral helper, owner-bound so cancellation can also clean a stranded guide.
tag @s add origin.combat_fx
tag @s add origin.pickaxe_fx
tag @s add origin.pickaxe.guide
tag @s add origin.pickaxe.guide.new
scoreboard players operation @s origin.owner = #owner origin.owner
scoreboard players operation @s origin.fx_id = #fx origin.fx_id
