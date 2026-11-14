tag @a[tag=firelord.circle.r1] add firelord.circle.b1
tag @a[tag=firelord.circle.r1] remove firelord.circle.r1
tag @s add firelord.circle.b2
function zombie:skill/nether/firelord/circle/make_b2
execute positioned 294.5 92 145.5 run function zombie:skill/nether/firelord/circle/make_r1_ground
execute positioned 306.5 92 145.5 run function zombie:skill/nether/firelord/circle/make_r2_ground
