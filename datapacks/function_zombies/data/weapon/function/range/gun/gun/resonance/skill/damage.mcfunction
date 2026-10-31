tag @s add res_skill_damaged
function zombie:summon
# The common damage path emits 1 vanilla HP for hurt feedback. Preserve the
# pre-existing vanilla HP so zombie/take_damage cannot debit that feedback a
# second time. Earlier legitimate pending vanilla damage remains untouched.
data remove storage weapon:resonance hit.health
execute if data entity @s Health run data modify storage weapon:resonance hit.health set from entity @s Health
tag @a[tag=res_skill_owner] remove crit_hit
scoreboard players set punch weapon.state 0
scoreboard players operation damage weapon.state = laser_damage weapon.gun_resonance
scoreboard players operation gold weapon.state = laser_gold weapon.gun_resonance
function weapon:range/gun/damage/damage
execute if score @s zombie.health matches 1.. if data storage weapon:resonance hit.health run data modify entity @s Health set from storage weapon:resonance hit.health
data remove storage weapon:resonance hit.health
