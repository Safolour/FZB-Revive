
execute if entity @s[scores={weapon.range.skill.heal_timer=1..}] run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
execute if entity @s[scores={weapon.range.skill.heal_timer=1..}] run tellraw @s [{translate:zb.item.skill.heal.tellraw.6,with:[{score:{name:"@s",objective:weapon.range.skill.heal_timer0},color:red},{translate:zb.item.skill.tellraw.heal.1}]}]
execute if entity @s[scores={weapon.range.skill.heal_timer=1..}] run return run data remove storage weapon root
function weapon:range/skill/skill/heal/heal