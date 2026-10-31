scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_teleportparticle 0

summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie.teleport.particle","skill.ultimatechaoszombie.teleport.particle0"]}

$summon marker $(x) $(y) $(z) {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.teleport.particle","skill.ultimatechaoszombie.teleport.particle1"]}

execute as @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle0] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/particle/loop
