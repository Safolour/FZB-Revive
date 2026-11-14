execute unless entity @e[type=marker,tag=firelord.p4.legion.clock,tag=firelord.p4.legion.first] run scoreboard players set @e[type=marker,tag=firelord.p4.legion.clock] zombie.skill_timer 0
tag @e[type=marker,tag=firelord.p4.legion.clock] add firelord.p4.legion.first
function zombie:zombie/nether/spirit/spirit_archer/0
tag @e[type=stray,tag=skill.spiritskeleton,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob1] add firelord.p4.legion.mob1
function zombie:skill/nether/firelord/p4/legion/land
kill @s
