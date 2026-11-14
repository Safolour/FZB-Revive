execute if entity @s[tag=fl.firstcharge.pending,tag=!fl.firstcharge.done] if score @s fl.volley matches 2.. run return run function zombie:skill/nether/firelord/fire/choose_charge
execute store result score #fl.choice fl.shots run random value 0..1
execute if score @s fl.volley matches 2.. store result score #fl.choice fl.shots run random value 0..2
execute unless entity @s[tag=fl.firstcharge.done] if score @s fl.volley matches 2.. run tag @s add fl.firstcharge.pending
execute if score #fl.choice fl.shots matches 0 run return run function zombie:skill/nether/firelord/fire/choose_travel
execute if score #fl.choice fl.shots matches 1 run return run function zombie:skill/nether/firelord/fire/choose_air
function zombie:skill/nether/firelord/fire/choose_charge
