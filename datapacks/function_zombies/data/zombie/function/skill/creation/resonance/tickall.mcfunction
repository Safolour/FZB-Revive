
execute unless score tick zombie.resonance matches 0 run return fail
scoreboard players reset tick zombie.resonance
scoreboard players add score zombie.resonance 1

execute if score score zombie.resonance matches 260 run function zombie:skill/creation/resonance/0
execute if score score zombie.resonance matches 261.. if score score zombie.resonance >= end zombie.resonance run function zombie:skill/creation/resonance/2
execute if score score zombie.resonance matches 261.. unless entity @n[type=zombie,tag=skill.creation.resonance.0] run function zombie:skill/creation/resonance/3

execute if entity @n[type=zombie,tag=skill.creation.resonance] run return fail
scoreboard players reset score zombie.resonance
scoreboard players reset count zombie.resonance
scoreboard players reset damage zombie.resonance
