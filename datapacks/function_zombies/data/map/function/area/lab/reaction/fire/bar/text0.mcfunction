

$bossbar set area.fire_reaction.$(uuid) value 999
$execute store result score bossbar area.reaction.fire run bossbar set area.fire_reaction.$(uuid) value 1000
$execute if score bossbar area.reaction.fire matches 1.. run bossbar set area.fire_reaction.$(uuid) name "$(text)"
$execute if score bossbar area.reaction.fire matches 1.. run return run bossbar set area.fire_reaction.$(uuid) players @s
$bossbar add area.fire_reaction.$(uuid) ""
$bossbar set area.fire_reaction.$(uuid) name "$(text)"
$bossbar set area.fire_reaction.$(uuid) visible true
$bossbar set area.fire_reaction.$(uuid) players @s
$bossbar set area.fire_reaction.$(uuid) color blue
$bossbar set area.fire_reaction.$(uuid) style progress
$bossbar set area.fire_reaction.$(uuid) max 1000
$bossbar set area.fire_reaction.$(uuid) value 1000