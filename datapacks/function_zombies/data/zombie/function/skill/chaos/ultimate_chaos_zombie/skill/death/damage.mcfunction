effect give @s slowness 3 1 false
effect give @s blindness 1 0 true

#damage @s 5
#data modify storage revive root.down.target0 set value ultimatechaoszombie

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.death_explosion zombie.skill.damage
function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]
