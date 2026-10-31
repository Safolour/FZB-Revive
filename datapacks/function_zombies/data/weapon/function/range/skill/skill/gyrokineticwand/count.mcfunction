
scoreboard players operation @s weapon.range.skill.gyrokineticwand_timer0 = time weapon.state
execute if entity @s[scores={weapon.range.skill.gyrokineticwand_timer=0}] run return run function weapon:range/skill/slot/text_cooldown_end {skill:gyrokineticwand,item:blaze_rod}
function weapon:range/skill/slot/count {skill:gyrokineticwand}
