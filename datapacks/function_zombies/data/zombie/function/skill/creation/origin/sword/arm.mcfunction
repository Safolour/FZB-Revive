$execute if entity @e[type=armor_stand,tag=origin.sword.attacker,limit=1] run damage @s $(damage) mob_attack by @e[type=armor_stand,tag=origin.sword.attacker,limit=1]
$execute unless entity @e[type=armor_stand,tag=origin.sword.attacker,limit=1] run damage @s $(damage) generic
