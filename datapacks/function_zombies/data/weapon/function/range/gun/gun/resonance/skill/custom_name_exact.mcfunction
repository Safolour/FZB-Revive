# NBT selector lists match subsets: compare the full value to exclude variants.
data modify storage weapon:resonance kind.candidate set from entity @s CustomName
execute store success score #res_name_diff weapon.state run data modify storage weapon:resonance kind.candidate set from storage weapon:resonance kind.name
execute if score #res_name_diff weapon.state matches 0 run function weapon:range/gun/gun/resonance/skill/damage
