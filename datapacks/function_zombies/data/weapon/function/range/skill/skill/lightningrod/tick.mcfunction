
scoreboard players remove @s[scores={weapon.range.skill.lightningrod_timer=0..}] weapon.range.skill.lightningrod_timer 1
scoreboard players operation time weapon.state = @s weapon.range.skill.lightningrod_timer
scoreboard players operation time weapon.state /= 20 number
scoreboard players add time weapon.state 1
execute if entity @s[scores={weapon.range.skill.lightningrod_timer=1..}] unless score @s weapon.range.skill.lightningrod_timer0 = time weapon.state run function weapon:range/skill/skill/lightningrod/count
execute if entity @s[scores={weapon.range.skill.lightningrod_timer=0}] run function weapon:range/skill/skill/lightningrod/count
execute unless items entity @s weapon *[custom_data~{tag:["lightningrod"]}] run return fail
execute if entity @s[scores={weapon.rightclick=1..}] run return run function weapon:range/skill/skill/lightningrod/right_click
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/skill/skill/lightningrod/left_click
