execute if entity @s[tag=skill.disperse.fly,tag=!skill.disperse.death] run function zombie:skill/electric/aircraft/obviate/fly/tick
execute if entity @s[tag=!skill.disperse.death] run function zombie:skill/electric/aircraft/obviate/flash/tick
execute if entity @s[tag=!skill.disperse.death] run function zombie:skill/electric/aircraft/obviate/particle/tick
execute if entity @s[tag=skill.disperse.death] run function zombie:skill/electric/aircraft/obviate/death/tick
execute if entity @s[tag=skill.disperse.shoot] run function zombie:skill/electric/aircraft/disperse/shoot/tick

