#damage @s 5 mob_attack at ~ ~ ~

playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
playsound item.flintandsteel.use record @a ~ ~ ~ 1 0
#data modify storage revive root.down.target0 set value ultimatechaoszombie

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.laser zombie.skill.damage
function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]
