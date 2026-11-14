execute if entity @s[tag=firelord.eclipse.travel] run return run function zombie:skill/nether/firelord/p3/eclipse/arrive
tag @s remove firelord.traveling
tag @s add hitable
data merge entity @s {NoAI:0b,Invulnerable:0b}
scoreboard players add @s fl.volley 1
tag @s remove fl.initial.charge
scoreboard players set @s zombie.skill_timer 0
tag @s add firelord.fire.pending
scoreboard players set @s fl.firewait 0
