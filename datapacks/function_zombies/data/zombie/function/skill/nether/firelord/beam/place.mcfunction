summon marker ~ 92 ~ {Tags:["mob.skill","skill.firelord.beam","firelord.beam.new"]}
summon marker ~ 92 ~ {Tags:["mob.skill","firelord.beam.impact","firelord.beam.impact.new"]}
execute as @e[type=marker,tag=firelord.beam.impact.new,sort=nearest,limit=1] at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/beam/shield_surface_start
tag @e[type=marker,tag=firelord.beam.impact.new,sort=nearest,limit=1] remove firelord.beam.impact.new
tag @e[type=marker,tag=firelord.beam.new,sort=nearest,limit=1] remove firelord.beam.new
