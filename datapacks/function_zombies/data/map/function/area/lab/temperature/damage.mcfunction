scoreboard players set damagecooldown area.temperature 0

execute as @a[scores={stat.player=1}] at @s run function map:area/lab/temperature/damage0
execute as @a[scores={stat.player=1}] at @s run title @s[scores={system.room=4..,title.color.enable=0}] reset
execute as @a[scores={stat.player=1}] at @s run title @s[scores={system.room=4..,title.color.enable=0}] times 0 100 0
execute as @a[scores={stat.player=1}] at @s run title @s[scores={system.room=4..,title.color.enable=0}] title {"translate":"zb.area.temperature.title.0"}
execute as @a[scores={stat.player=1}] at @s run title @s[scores={system.room=4..,title.color.enable=0}] subtitle {"translate":"zb.area.temperature.title.1"}
