
scoreboard players remove @s[scores={weapon.range.skill.heal_timer=0..}] weapon.range.skill.heal_timer 1
scoreboard players operation time weapon.state = @s weapon.range.skill.heal_timer
scoreboard players operation time weapon.state /= 20 number
scoreboard players add time weapon.state 1
execute if entity @s[scores={weapon.range.skill.heal_timer=1..}] unless score @s weapon.range.skill.heal_timer0 = time weapon.state run function weapon:range/skill/skill/heal/count
execute if entity @s[scores={weapon.range.skill.heal_timer=0}] run function weapon:range/skill/skill/heal/count
execute unless items entity @s weapon *[custom_data~{tag:["heal"]}] run return fail
execute if entity @s[scores={weapon.rightclick=1..}] run function weapon:range/skill/skill/heal/right_click
execute if entity @s[scores={weapon.leftclick=1..}] run function weapon:range/skill/skill/heal/left_click