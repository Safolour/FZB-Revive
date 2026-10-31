particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.1 10 force @a[scores={particle=0}]

playsound item.flintandsteel.use record @a ~ ~ ~ 2 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 2 1

effect give @s blindness 1 0 true
effect give @s slowness 1 1 false

#damage @s 1 mob_attack

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.static_electric zombie.skill.damage
function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]
