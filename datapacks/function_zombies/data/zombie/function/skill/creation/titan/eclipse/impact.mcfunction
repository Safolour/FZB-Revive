execute if entity @s[tag=titan.eclipse.impact] run return 0
tag @s add titan.eclipse.impact
scoreboard players operation #owner origin.owner = @s origin.owner
function zombie:skill/creation/titan/eclipse/death
execute as @a[scores={system.room=4..,stat.player=1..2}] at @s run function zombie:skill/creation/titan/eclipse/kill_player
# Normal round tick observes the party wipe and enters the existing game-over flow.
kill @s
