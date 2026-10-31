# The projectile advances 0.5 blocks per distance unit. Each target gets a
# fresh hit only after four units (2 blocks) since its previous hit.
scoreboard players set #aurora_last weapon.state 0
$execute if data entity @e[tag=aurora_active,limit=1] data.hits[{uuid:$(uuid)}] store result score #aurora_last weapon.state run data get entity @e[tag=aurora_active,limit=1] data.hits[{uuid:$(uuid)}].distance
scoreboard players operation #aurora_since weapon.state = @e[tag=aurora_active,limit=1] weapon.aurora_dist
scoreboard players operation #aurora_since weapon.state -= #aurora_last weapon.state
$execute if data entity @e[tag=aurora_active,limit=1] data.hits[{uuid:$(uuid)}] if score #aurora_since weapon.state matches ..3 run return 0
$execute unless data entity @e[tag=aurora_active,limit=1] data.hits[{uuid:$(uuid)}] run data modify entity @e[tag=aurora_active,limit=1] data.hits append value {uuid:$(uuid),distance:0}
$execute store result entity @e[tag=aurora_active,limit=1] data.hits[{uuid:$(uuid)}].distance int 1 run scoreboard players get @e[tag=aurora_active,limit=1] weapon.aurora_dist
function weapon:range/gun/gun/aurora/proj/hit_damage with entity @e[tag=aurora_active,limit=1] data
scoreboard players remove @e[tag=aurora_active,limit=1] weapon.aurora_pierce 1
