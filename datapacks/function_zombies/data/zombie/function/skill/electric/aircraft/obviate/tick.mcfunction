execute if entity @s[tag=!skill.obviate.death] run function zombie:skill/electric/aircraft/obviate/flash/tick
execute if entity @s[tag=skill.obviate.fly,tag=!skill.obviate.death] run function zombie:skill/electric/aircraft/obviate/fly/tick
execute if entity @s[tag=!skill.obviate.death] run function zombie:skill/electric/aircraft/obviate/particle/tick
execute if entity @s[tag=skill.obviate.death] run function zombie:skill/electric/aircraft/obviate/death/tick
execute if entity @s[tag=skill.obviate.shoot] run function zombie:skill/electric/aircraft/obviate/shoot/tick

