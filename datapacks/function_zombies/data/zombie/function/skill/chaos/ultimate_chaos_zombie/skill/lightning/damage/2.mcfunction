summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.lightning.damage"]}

scoreboard players add @e[type=marker,tag=skill.ultimatechaoszombie.lightning.damage] zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage 1
scoreboard players add @a[scores={zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage=1..}] zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage 1
scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage 1

title @s[scores={system.room=4..,title.color.enable=0}] reset
title @s[scores={system.room=4..,title.color.enable=0}] times 0 30 10
title @s[scores={system.room=4..,title.color.enable=0}] title {translate:"zb.zombie.chaos.boss.0"}

playsound minecraft:block.bell.use record @s ~ ~ ~ 2 0
particle flash ~ ~ ~ 0 0 0 0 0 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0.3 30 force @a[scores={particle=0}]

#damage @s 1 mob_attack

effect give @s blindness 1 0 true
effect give @s slowness 5 3 false

#data modify storage revive root.down.target0 set value ultimatechaoszombie

execute store result storage zombie skill.damage double 0.1 run scoreboard players get chaos.ultimatechaoszombie.lightning zombie.skill.damage
function zombie:skill/chaos/ultimate_chaos_zombie/skill/damage0 with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.ultimatechaoszombie,color:red}]
