execute if score stat zombie.observereye matches 0 run return 0
execute if score @s zombie.observereye matches 1.. run scoreboard players add @s zombie.observereye 1

execute if score @s zombie.observereye matches 81 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.6",color:dark_red}]}]}}
execute if score @s zombie.observereye matches 111 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.7",color:red}]}]}}
execute if score @s zombie.observereye matches 141 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.8",color:gold}]}]}}
execute if score @s zombie.observereye matches 171 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.9",color:yellow}]}]}}
execute if score @s zombie.observereye matches 201 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.10",color:white}]}]}}

execute if score @s zombie.observereye matches 81 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.6",color:dark_red}]}]}}
execute if score @s zombie.observereye matches 111 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.7",color:red}]}]}}
execute if score @s zombie.observereye matches 141 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.8",color:gold}]}]}}
execute if score @s zombie.observereye matches 171 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.9",color:yellow}]}]}}
execute if score @s zombie.observereye matches 201 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.3",with:[{"translate":"zb.zombe.observereye.10",color:white}]}]}}

execute if score @s zombie.observereye matches 241 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.4"}]}}
execute if score @s zombie.observereye matches 241 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.4"}]}}

execute if score @s zombie.observereye matches 241 run function zombie:skill/machine/observereye/particle
execute if score @s zombie.observereye matches 261 run function zombie:skill/machine/observereye/particle
execute if score @s zombie.observereye matches 281 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.1"}]}}
execute if score @s zombie.observereye matches 281 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.1"}]}}

execute if score @s zombie.observereye matches 401 run function zombie:skill/machine/observereye/particle0
execute if score @s zombie.observereye matches 401 if entity @s[tag=skill.observereye0] run data merge entity @n[type=armor_stand,tag=skill.observereye0.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.5"}]}}
execute if score @s zombie.observereye matches 401 if entity @s[tag=skill.observereye1] run data merge entity @n[type=armor_stand,tag=skill.observereye1.2] {CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.5"}]}}

execute if score @s zombie.observereye matches 200 if entity @e[type=marker,limit=1,tag=skill.observereye,scores={zombie.observereye=0}] run scoreboard players set @n[type=marker,tag=skill.observereye,scores={zombie.observereye=0}] zombie.observereye 1

execute if score @s zombie.observereye matches 401.. run scoreboard players set @s zombie.observereye 1

execute if score @s zombie.observereye matches 280 run function zombie:skill/machine/observereye/update
execute if score @s zombie.observereye matches 301.. run function zombie:skill/machine/observereye/laser
