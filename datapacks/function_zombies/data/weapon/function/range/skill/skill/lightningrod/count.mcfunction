
scoreboard players operation @s weapon.range.skill.lightningrod_timer0 = time weapon.state
execute if entity @s[scores={weapon.range.skill.lightningrod_timer=0}] run return run function weapon:range/skill/slot/text_cooldown_end {skill:lightningrod,item:blaze_rod}
function weapon:range/skill/slot/count {skill:lightningrod}
