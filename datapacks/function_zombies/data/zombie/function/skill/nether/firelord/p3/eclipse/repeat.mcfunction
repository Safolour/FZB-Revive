# A failed destination search leaves the clock and turn intact for retry.
function zombie:skill/nether/firelord/p3/eclipse/depart
execute if entity @s[tag=firelord.eclipse.travel,tag=firelord.traveling] run tag @s add firelord.eclipse.repeat
execute if entity @s[tag=firelord.eclipse.travel,tag=firelord.traveling] run scoreboard players set @s fl.circleclock 0
