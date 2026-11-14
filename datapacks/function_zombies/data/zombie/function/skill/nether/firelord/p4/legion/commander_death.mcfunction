kill @e[type=text_display,tag=firelord.p4.commander.icon]
kill @e[type=marker,tag=firelord.p4.commander.linktarget]
execute as @e[type=zombie,tag=firelord.p4.minion] run data merge entity @s {Invulnerable:0b}
function zombie:skill/nether/firelord/p2/shield_unlock
function zombie:skill/nether/firelord/p4/legion/commander_death_fx
