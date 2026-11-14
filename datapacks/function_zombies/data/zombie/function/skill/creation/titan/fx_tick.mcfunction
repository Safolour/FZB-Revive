execute unless score #game_active round matches 1 run return run function zombie:skill/creation/titan/fx_cancel
execute if entity @s[tag=titan.sword.anchor] run return run function zombie:skill/creation/titan/sword/owner_tick
execute if entity @s[tag=titan.lightning.controller] run return run function zombie:skill/creation/titan/lightning/controller_tick
execute if entity @s[tag=titan.lightning.target] run return run function zombie:skill/creation/titan/lightning/target_tick
