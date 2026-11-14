$execute unless data storage mainlobby:setting_environment restoring.effects.$(effect) run return 0
$data modify storage mainlobby:setting_environment effect set value {id:"minecraft:$(effect)",seconds:"infinite",amplifier:0,hide_particles:"false"}
$data modify storage mainlobby:setting_environment effect.saved set from storage mainlobby:setting_environment restoring.effects.$(effect)
execute if data storage mainlobby:setting_environment effect.saved.amplifier run data modify storage mainlobby:setting_environment effect.amplifier set from storage mainlobby:setting_environment effect.saved.amplifier
execute if data storage mainlobby:setting_environment effect.saved{show_particles:0b} run data modify storage mainlobby:setting_environment effect.hide_particles set value "true"
scoreboard players set #duration setting.env_clock 0
execute store result score #duration setting.env_clock run data get storage mainlobby:setting_environment effect.saved.duration
execute if score #duration setting.env_clock matches -1 run return run function mainlobby:setting/environment/apply_effect with storage mainlobby:setting_environment effect
scoreboard players operation #duration setting.env_clock -= #elapsed setting.env_clock
execute if score #duration setting.env_clock matches ..0 run return 0
# Saturation is instant: /effect interprets its finite duration as ticks.
execute if data storage mainlobby:setting_environment effect{id:"minecraft:saturation"} run return run function mainlobby:setting/environment/restore_instant
# Ordinary effects use seconds. Round up the remaining partial second.
execute if score #duration setting.env_clock matches 20000001.. run scoreboard players set #duration setting.env_clock 20000000
scoreboard players operation #duration setting.env_clock += #19 setting.env_clock
scoreboard players operation #duration setting.env_clock /= #20 setting.env_clock
execute if score #duration setting.env_clock matches 1000001.. run scoreboard players set #duration setting.env_clock 1000000
execute store result storage mainlobby:setting_environment effect.seconds int 1 run scoreboard players get #duration setting.env_clock
function mainlobby:setting/environment/apply_effect with storage mainlobby:setting_environment effect
