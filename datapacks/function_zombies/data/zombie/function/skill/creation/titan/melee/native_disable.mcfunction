# Preserve pathfinding while replacing native damage, including held-item modifiers.
attribute @s minecraft:attack_damage base set 0
execute unless entity @s[tag=titan.melee.native_off] run attribute @s minecraft:attack_damage modifier add titan:skill_melee_only -1024 add_value
tag @s add titan.melee.native_off
