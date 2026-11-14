# Finite instant effects use the remaining tick count without division by 20.
execute if score #duration setting.env_clock matches 1000001.. run scoreboard players set #duration setting.env_clock 1000000
execute store result storage mainlobby:setting_environment effect.seconds int 1 run scoreboard players get #duration setting.env_clock
function mainlobby:setting/environment/apply_effect with storage mainlobby:setting_environment effect
