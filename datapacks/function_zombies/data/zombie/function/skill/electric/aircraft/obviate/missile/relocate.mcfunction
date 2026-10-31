
execute if score @s zombie.electric.aircraft.shoot.skill_timer matches 100.. run return fail
execute if score @s zombie.electric.aircraft.shoot.skill_timer0 matches 7.. run return run scoreboard players set @s zombie.electric.aircraft.shoot.skill_timer 200
execute store result score random zombie.electric.aircraft.shoot.position run random value 1..3
execute if score random zombie.electric.aircraft.shoot.position matches 1 run return run function zombie:skill/electric/aircraft/obviate/missile/get_position1
function zombie:skill/electric/aircraft/obviate/missile/get_position0