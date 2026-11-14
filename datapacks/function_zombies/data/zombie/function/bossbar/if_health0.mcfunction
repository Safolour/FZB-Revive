
execute unless score number zombie.bossbar_number matches 1.. run return fail
scoreboard players operation health1 zombie.bossbar_number = health0 zombie.bossbar_number
scoreboard players operation health1 zombie.bossbar_number *= number zombie.bossbar_number
scoreboard players operation health1 zombie.bossbar_number /= number0 zombie.bossbar_number
# Titan's 120-segment bar must show exact ratios at 2500/1250 HP, without an extra red segment.
execute if entity @s[tag=skill.titan] if score health zombie.bossbar_number <= health1 zombie.bossbar_number run scoreboard players operation number1 zombie.bossbar_number = number zombie.bossbar_number
execute if entity @s[tag=skill.titan.eclipse] if score health zombie.bossbar_number <= health1 zombie.bossbar_number run scoreboard players operation number1 zombie.bossbar_number = number zombie.bossbar_number
execute unless entity @s[tag=skill.titan] unless entity @s[tag=skill.titan.eclipse] if score health zombie.bossbar_number < health1 zombie.bossbar_number run scoreboard players operation number1 zombie.bossbar_number = number zombie.bossbar_number
execute unless score number zombie.bossbar_number matches 1.. run return fail
scoreboard players remove number zombie.bossbar_number 1
function zombie:bossbar/if_health0
execute if score number zombie.bossbar_number matches 1.. run return fail
