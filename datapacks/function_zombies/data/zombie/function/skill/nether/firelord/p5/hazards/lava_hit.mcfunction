tag @s add p5.lava_contact
execute store result score #p5_lava_y area.temperature run data get entity @s Pos[1] 100
$execute if score #p5_lava_y area.temperature matches ..$(s) run tag @s add p5.lava_sub
