scoreboard players reset @s zombie.chaos.ultimate_chaos_zombie.skill_timer

scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_cooldowntimer 20

tag @s remove skill.ultimatechaoszombie.laser

data merge entity @s {NoAI:0b}
item replace entity @s weapon.mainhand with diamond_sword[attribute_modifiers=[{id:"attack_damage",type:"minecraft:attack_damage",amount:0,operation:"add_value"}]]

tag @s remove skill.ultimatechaoszombie.casting
