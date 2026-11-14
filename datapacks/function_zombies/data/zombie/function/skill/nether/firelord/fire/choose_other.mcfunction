execute store result score #fl.choice fl.shots run random value 0..1
execute if score #fl.choice fl.shots matches 0 run return run function zombie:skill/nether/firelord/fire/choose_travel
function zombie:skill/nether/firelord/fire/choose_combo
