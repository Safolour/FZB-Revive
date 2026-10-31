
execute unless entity @s[scores={health.heal_speed=1..}] run return fail
# PL 温度 41°C 起生命值不会自然恢复（#tier 见 map:area/lab/temperature/update）
execute if score #tier area.temperature matches 2.. if entity @s[scores={system.room=4..}] run return fail
scoreboard players operation @s[scores={health.regeneration_timer=..-1}] health.regeneration_timer = @s health.heal_speed
scoreboard players remove @s health.regeneration_timer 1
execute if entity @s[scores={health.regeneration_timer=0..}] run effect give @s regeneration 1 0 true
execute if entity @s[scores={health.regeneration_timer=0}] run function bs.health:add/health {points:1.0}

