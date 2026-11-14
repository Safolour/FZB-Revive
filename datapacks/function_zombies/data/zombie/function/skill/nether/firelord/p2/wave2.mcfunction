tag @s remove firelord.p2.wave1
tag @s add firelord.p2.wave2
scoreboard players set @s zombie.skill_timer 0
function zombie:skill/nether/firelord/p2/spawn/wave2_init
tag @s remove firelord.p2.first_spawn
scoreboard players set @s fl.p2.ashes 0
tag @e[type=marker,tag=firelord.p2.spawn.target] add firelord.p2.spawn.simultaneous
