execute unless items entity @s weapon.mainhand *[custom_data~{gun:"parallax"}] run return 0
scoreboard players add @s weapon.parallax_mode 1
scoreboard players operation @s weapon.parallax_mode %= 2 number
