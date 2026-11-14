function system:time_calibration
function mainlobby:setting/load

# P5 independent XZ rooms also work in worlds initialized before this objective existed.
scoreboard objectives add fl.room_order dummy

# BEGIN REPLAY GUN REWARDS
scoreboard players set gold weapon.gun_aurora 40
scoreboard players set gold_crit weapon.gun_aurora 70
scoreboard players set gold weapon.gun_coppergun 20
scoreboard players set gold_crit weapon.gun_coppergun 30
scoreboard players set gold weapon.gun_exposedcoppergun 15
scoreboard players set gold_crit weapon.gun_exposedcoppergun 25
scoreboard players set gold weapon.gun_oxidizedcoppergun 10
scoreboard players set gold_crit weapon.gun_oxidizedcoppergun 15
scoreboard players set gold weapon.gun_parallax 0
scoreboard players set gold_crit weapon.gun_parallax 0
scoreboard players set gold weapon.gun_rainbowrocketlauncher 10
scoreboard players set gold_crit weapon.gun_rainbowrocketlauncher 10
scoreboard players set gold weapon.gun_rainbowshotgun 1
scoreboard players set gold_crit weapon.gun_rainbowshotgun 5
scoreboard players set gold weapon.gun_resonance 10
scoreboard players set gold_crit weapon.gun_resonance 24
scoreboard players set gold weapon.gun_season_autumn 24
scoreboard players set gold_crit weapon.gun_season_autumn 37
scoreboard players set gold weapon.gun_soulflamethrower 2
scoreboard players set gold_crit weapon.gun_soulflamethrower 3
scoreboard players set gold weapon.gun_ultimateaurora 40
scoreboard players set gold_crit weapon.gun_ultimateaurora 70
scoreboard players set gold weapon.gun_ultimaterainbowrocketlauncher 10
scoreboard players set gold_crit weapon.gun_ultimaterainbowrocketlauncher 10
scoreboard players set gold weapon.gun_ultimaterainbowrocketlauncherii 10
scoreboard players set gold_crit weapon.gun_ultimaterainbowrocketlauncherii 10
scoreboard players set gold weapon.gun_ultimaterainbowrocketlauncheriii 10
scoreboard players set gold_crit weapon.gun_ultimaterainbowrocketlauncheriii 10
scoreboard players set gold weapon.gun_ultimaterainbowshotgun 1
scoreboard players set gold_crit weapon.gun_ultimaterainbowshotgun 5
scoreboard players set gold weapon.gun_ultimaterainbowshotgunii 1
scoreboard players set gold_crit weapon.gun_ultimaterainbowshotgunii 5
scoreboard players set gold weapon.gun_ultimaterainbowshotguniii 1
scoreboard players set gold_crit weapon.gun_ultimaterainbowshotguniii 5
scoreboard players set gold weapon.gun_ultimateseason_autumn 24
scoreboard players set gold_crit weapon.gun_ultimateseason_autumn 37
scoreboard players set gold weapon.gun_ultimatesoulflamethrower 2
scoreboard players set gold_crit weapon.gun_ultimatesoulflamethrower 3
scoreboard players set gold weapon.gun_weatheredcoppergun 12
scoreboard players set gold_crit weapon.gun_weatheredcoppergun 19
# END REPLAY GUN REWARDS

# BEGIN ECHO LOAD
function weapon:range/skill/skill/echo/load
# END ECHO LOAD

# R40 third-wave timeout objective; safe to retain across reloads.
scoreboard objectives add fl.p2.ashes dummy
scoreboard objectives add fl.p2.shot dummy

scoreboard objectives add fl.volley dummy

scoreboard objectives add fl.shots dummy

scoreboard objectives add fl.firewait dummy

# R70 visual state is also initialized on a normal /reload.
function zombie:skill/creation/origin/load
# Migrate a previously loaded lab spawn list; the new eye cue runs at the midpoint.
execute if data storage round mob_spawn_list[{round:70}].wave[{wave:0}].mob[{id:"machine/observereye/reset"}] run data remove storage round mob_spawn_list[{round:70}].wave[{wave:0}].mob[{id:"machine/observereye/reset"}]
