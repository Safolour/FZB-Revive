# Keep the decision state if no valid destination exists, so it can retry.
execute store success score #fl.depart fl.shots run function zombie:zombie/nether/firelord/spawn_north
execute if entity @s[tag=firelord.traveling] run tag @s remove fl.choose.after_travel
execute if entity @s[tag=firelord.traveling] run tag @s remove fl.choose.other
