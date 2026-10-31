# 造物：名字键 zb.zombie.name.creation.* 的那一批，标签 skill.creation.<种类>
# 不含技能扔出来的铲子、盾之类（那些标签带 .weapon，名字不是造物）
execute if entity @s[tag=skill.creation.avert] run return 1
execute if entity @s[tag=skill.creation.benediction] run return 1
execute if entity @s[tag=skill.creation.calamity] run return 1
execute if entity @s[tag=skill.creation.collapse] run return 1
execute if entity @s[tag=skill.creation.cradle] run return 1
execute if entity @s[tag=skill.creation.defend] run return 1
execute if entity @s[tag=skill.creation.destruction] run return 1
execute if entity @s[tag=skill.creation.electrification] run return 1
execute if entity @s[tag=skill.creation.elude] run return 1
execute if entity @s[tag=skill.creation.quell] run return 1
execute if entity @s[tag=skill.creation.rampart] run return 1
execute if entity @s[tag=skill.creation.resonance] run return 1
execute if entity @s[tag=skill.creation.sample] run return 1
execute if entity @s[tag=skill.creation.virus] run return 1
return 0
