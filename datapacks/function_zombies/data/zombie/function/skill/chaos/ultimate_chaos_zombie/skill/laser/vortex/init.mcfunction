
function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/vortex/spawn
scoreboard players operation @e[type=marker,tag=chosen] zombie.uuid = @s zombie.uuid
tag @e[type=marker,tag=chosen] remove chosen
scoreboard players add @e[type=marker,tag=skill.ultimatechaoszombie.laser.vortex] zombie.chaos.ultimate_chaos_zombie.skill_laservortexparticle 1
