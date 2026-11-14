# start0 already installed the real match's baseline. Never clear those effects.
$execute if score @s system.room matches 4.. run return run function mainlobby:setting/environment/forget_session {u0:$(u0),u1:$(u1),u2:$(u2),u3:$(u3)}
$execute unless data storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)" run return run function mainlobby:setting/environment/forget_session {u0:$(u0),u1:$(u1),u2:$(u2),u3:$(u3)}
$data modify storage mainlobby:setting_environment restoring set from storage mainlobby:setting_environment sessions."$(u0)_$(u1)_$(u2)_$(u3)"
execute store result score #now setting.env_clock run time query gametime
execute store result score #entered setting.env_clock run data get storage mainlobby:setting_environment restoring.entered
scoreboard players operation #elapsed setting.env_clock = #now setting.env_clock
scoreboard players operation #elapsed setting.env_clock -= #entered setting.env_clock
execute if score #elapsed setting.env_clock matches ..-1 run scoreboard players operation #elapsed setting.env_clock += #wrap setting.env_clock
effect clear @s saturation
effect clear @s resistance
effect clear @s mining_fatigue
function mainlobby:setting/environment/restore_burning with storage mainlobby:setting_environment restoring
function mainlobby:setting/environment/restore_effect {effect:saturation}
function mainlobby:setting/environment/restore_effect {effect:resistance}
function mainlobby:setting/environment/restore_effect {effect:mining_fatigue}
data remove storage mainlobby:setting_environment restoring
data remove storage mainlobby:setting_environment effect
$function mainlobby:setting/environment/forget_session {u0:$(u0),u1:$(u1),u2:$(u2),u3:$(u3)}
