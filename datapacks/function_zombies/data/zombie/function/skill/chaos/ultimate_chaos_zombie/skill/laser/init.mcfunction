scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_timer 0
tag @s add skill.ultimatechaoszombie.laser

data merge entity @s {NoAI:1b}
item replace entity @s weapon.mainhand with air

particle end_rod ^ ^1.2 ^0.5 0 0 0 0.05 5 force @a[scores={particle=0}]
playsound minecraft:entity.warden.sonic_charge record @a ~ ~ ~ 2 1

function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/moveback

function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/vortex/init

