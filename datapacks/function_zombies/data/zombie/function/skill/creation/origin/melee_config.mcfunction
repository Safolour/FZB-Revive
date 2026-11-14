# The ordinary 20 damage hit is now an immediate skill; keep native attacks harmless,
# including the default attribute modifiers on the temporarily held shovel/pickaxe.
attribute @s minecraft:attack_damage base set 0
execute unless entity @s[tag=origin.melee.native_off] run attribute @s minecraft:attack_damage modifier add origin:skill_melee_only -1024 add_value
tag @s add origin.melee.native_off
