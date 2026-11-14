# Free training policy: use the exact shop transformation and presentation.
execute if items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","gun"]}] in minecraft:overworld run return run function map:shop/upgrade/gun
execute if items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","melee"]}] in minecraft:overworld run return run function map:shop/upgrade/melee
