
scoreboard players add @s zombie.skill_timer 1
execute if entity @s[scores={zombie.skill_timer=1}] run data merge entity @s {text:[{text:"§l§dBOOM§r"}],interpolation_duration:50,transformation:{scale:[100.0d,100.0d,100.0d]}}
execute unless entity @s[scores={zombie.skill_timer=25..}] run return fail
kill @s