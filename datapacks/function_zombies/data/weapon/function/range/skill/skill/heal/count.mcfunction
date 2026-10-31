
scoreboard players operation @s weapon.range.skill.heal_timer0 = time weapon.state
execute if entity @s[scores={weapon.range.skill.heal_timer=0}] run return run function weapon:range/skill/slot/text_cooldown_end {skill:heal,item:golden_apple}
function weapon:range/skill/slot/count {skill:heal}
