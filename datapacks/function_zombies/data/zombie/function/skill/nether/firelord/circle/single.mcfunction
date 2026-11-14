execute store result score #circle_color firelord.circle run random value 0..1
execute if score #circle_color firelord.circle matches 0 run function zombie:skill/nether/firelord/circle/single_red
execute if score #circle_color firelord.circle matches 1 run function zombie:skill/nether/firelord/circle/single_blue
