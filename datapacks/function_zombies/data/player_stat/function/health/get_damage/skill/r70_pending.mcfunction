execute if entity @s[tag=r70.source.origin.shovel] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.origin},{translate:zb.zombie.name.diamondshovel}]}]
execute if entity @s[tag=r70.source.origin.pickaxe] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.origin},{translate:zb.zombie.name.diamondpickaxe}]}]
# Restore winning attribution only at deferred settlement.
execute if entity @s[tag=r70.source.origin.melee] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.origin}]
execute if entity @s[tag=r70.source.origin.brutality] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.origin}]
execute if entity @s[tag=r70.source.origin.laser] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.origin},{translate:zb.zombie.laser}]}]
execute if entity @s[tag=r70.source.origin.sword] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.origin},{translate:zb.zombie.name.diamondsword}]}]
execute if entity @s[tag=r70.source.titan.melee] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.titan}]
execute if entity @s[tag=r70.source.titan.empowered] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.creation.titan}]
execute if entity @s[tag=r70.source.titan.sword] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.titan},{translate:zb.zombie.name.diamondsword}]}]
execute if entity @s[tag=r70.source.titan.scatter] run data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.titan},{translate:zb.zombie.laser}]}]
scoreboard players set #r70.pending.resisted health.damage_resisted 0
scoreboard players operation #r70.pending.resisted health.damage_resisted = @s health.damage_resisted
function player_stat:health/get_damage/skill/damage
scoreboard players operation @s health.damage_resisted = #r70.pending.resisted health.damage_resisted
data remove storage revive root.down.target0
execute unless score @s health.damage_skill matches 1.. run function player_stat:health/get_damage/skill/r70_clear_source
