
effect give @s blindness 1 0 true

execute store result storage zombie skill.damage double 0.1 run scoreboard players get bomber.burst.tnt zombie.skill.damage
function zombie:skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.bomber,color:yellow}]
function zombie:skill/electric/tnt/tellraw
