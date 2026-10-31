
$execute unless items entity @s container.* *[custom_data~{tag:["$(skill)"]}] run return fail
scoreboard players set @s inventory 2
$execute store result storage weapon root.slot int 1 run scoreboard players get @s weapon.range.skill.$(skill)_slot
$execute store result storage weapon root.count int 1 run scoreboard players get @s weapon.range.skill.$(skill)_timer0
$data modify storage weapon root.item set value $(item)
function weapon:range/skill/slot/text_cooldown_end0 with storage weapon root
data remove storage weapon root
scoreboard players set @s inventory 1

