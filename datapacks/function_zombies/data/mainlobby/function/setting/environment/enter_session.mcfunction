# Snapshot only the player and only properties which the combat baseline changes.
# Retain the full effect compounds for diagnostics; native /effect restores their
# visible level, remaining duration and particle visibility on normal room exit.
$execute if data storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)" run return run scoreboard players set @s setting.env 1
$data modify storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)" set value {effects:{},burning_base:1.0d,entered:0}
$execute store result storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)".entered int 1 run time query gametime
$execute store result storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)".burning_base double 0.000001 run attribute @s burning_time base get 1000000
$data modify storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)".effects.saturation set from entity @s active_effects[{id:"minecraft:saturation"}]
$data modify storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)".effects.resistance set from entity @s active_effects[{id:"minecraft:resistance"}]
$data modify storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)".effects.mining_fatigue set from entity @s active_effects[{id:"minecraft:mining_fatigue"}]
scoreboard players set @s setting.env 1
function mainlobby:setting/environment/defaults
function player_stat:environment/combat
# Keep the selected armor tier and use the same real equipment/attributes as a match.
execute in minecraft:overworld run function inventory:armor
function map:perk/inventory_check
# The shared baseline resets heal_speed; an already-enabled perk must be reapplied too.
function map:perk/fast_regeneration
function player_stat:health/max_health/tick
# Do not store a transient menu button as the player's equipment cache.
execute unless items entity @s container.* *[custom_data~{tag:["setting_gear"]}] in minecraft:overworld run function inventory:item_store0
