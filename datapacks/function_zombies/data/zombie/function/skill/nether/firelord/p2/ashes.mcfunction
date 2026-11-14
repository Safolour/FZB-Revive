tag @s remove firelord.p2.ashes.boss_spawned
tag @s remove firelord.p2.ashes.apostle_announced
tag @s remove firelord.p2.wave2
tag @s add firelord.p2.ashes
scoreboard players set @s zombie.skill_timer 0
scoreboard players set @s fl.p2.ashes 0
# The player-view recording sends the spawn and shield messages when the apostle lands.
function zombie:skill/nether/firelord/p2/spawn/ashes_init
tag @e[type=marker,tag=firelord.p2.spawn.target] add firelord.p2.spawn.simultaneous
