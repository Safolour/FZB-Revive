#damage @s 2 mob_attack
effect give @s blindness 1 0 true
effect give @s slowness 2 3 false

#data modify storage revive root.down.target0 set value ultimatechaoszombie

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.tnt zombie.skill.damage
function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]

function zombie:skill/electric/tnt/tellraw
