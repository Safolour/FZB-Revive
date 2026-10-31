scoreboard players operation match zombie.number = @s zombie.remains.bomber.tntmatch
execute as @e[type=armor_stand] if score @s zombie.remains.bomber.tntmatch = match zombie.number run tag @s add target
kill @e[type=armor_stand,tag=target]

execute if entity @s[tag=skill.remains.bomber.tnt.crimson] run function zombie:skill/remains/bomber/tnt/clear/crimson
execute if entity @s[tag=skill.remains.bomber.tnt.warped] run function zombie:skill/remains/bomber/tnt/clear/warped
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] run function zombie:skill/remains/bomber/tnt/clear/ashes
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] run function zombie:skill/remains/bomber/tnt/clear/spirit

function system:death
scoreboard players reset match zombie.number

particle explosion ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={particle=0}]
playsound block.grass.break record @a ~ ~ ~ 1 2
playsound block.amethyst_block.chime record @a ~ ~ ~ 1.5 1
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
