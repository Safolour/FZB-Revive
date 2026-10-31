
scoreboard players remove @s[scores={weapon.range.skill.gyrokineticwand_timer=0..}] weapon.range.skill.gyrokineticwand_timer 1
scoreboard players operation time weapon.state = @s weapon.range.skill.gyrokineticwand_timer
scoreboard players operation time weapon.state /= 20 number
scoreboard players add time weapon.state 1
execute if entity @s[scores={weapon.range.skill.gyrokineticwand_timer=1..}] unless score @s weapon.range.skill.gyrokineticwand_timer0 = time weapon.state run function weapon:range/skill/skill/gyrokineticwand/count
execute if entity @s[scores={weapon.range.skill.gyrokineticwand_timer=0}] run function weapon:range/skill/skill/gyrokineticwand/count
execute unless items entity @s weapon *[custom_data~{tag:["gyrokineticwand"]}] run return fail
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/skill/skill/gyrokineticwand/right_click
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/skill/skill/gyrokineticwand/left_click