scoreboard players set instakill_gold weapon.state 50
 scoreboard players set critical_extra weapon.state 125
scoreboard objectives add weapon.gun_hold dummy
scoreboard objectives add weapon.gun_hold0 dummy
scoreboard objectives add weapon.gun_uuid dummy
scoreboard objectives add weapon.gun_punch dummy
scoreboard objectives add weapon.gun_extrashot dummy
scoreboard objectives add weapon.gun_extrashot_time dummy
scoreboard objectives add weapon.gun_extrashot_time0 dummy

scoreboard objectives add weapon.gun_noammo_cd dummy

scoreboard objectives add weapon.gun_rotationy dummy
scoreboard objectives add weapon.gun_motionx0 dummy
scoreboard objectives add weapon.gun_motiony0 dummy
scoreboard objectives add weapon.gun_motionz0 dummy
# 投射物弹跳次数 / 上限（雪球炮：弹够次数自动爆炸）
scoreboard objectives add weapon.gun_bounce dummy
scoreboard objectives add weapon.gun_bounce_max dummy

scoreboard objectives add weapon.gun_shot dummy
scoreboard objectives add weapon.gun_hit dummy
scoreboard objectives add weapon.gun_headshot dummy
scoreboard objectives add weapon.gun_accuracy dummy
scoreboard objectives add weapon.gun_headshot_accuracy dummy

scoreboard objectives add weapon.gun_damage_extra dummy

scoreboard players set @a weapon.gun_hold 1
scoreboard players set @a weapon.gun_hold0 1
scoreboard players set cd weapon.gun_noammo_cd 100

function weapon:range/gun/gun/pistol/load
function weapon:range/gun/gun/rifle/load
function weapon:range/gun/gun/shotgun/load
function weapon:range/gun/gun/soaker/load
function weapon:range/gun/gun/flamethrower/load
function weapon:range/gun/gun/zapper/load
function weapon:range/gun/gun/sniper/load
function weapon:range/gun/gun/eldergun/load
function weapon:range/gun/gun/snowballcannon/load
function weapon:range/gun/gun/musicgun/load
function weapon:range/gun/gun/rocketlauncher/load
function weapon:range/gun/gun/airgun/load
function weapon:range/gun/gun/magnum/load
function weapon:range/gun/gun/machinegun/load
function weapon:range/gun/gun/practicegun/load
function weapon:range/gun/gun/golddigger/load
function weapon:range/gun/gun/doubleshotgun/load
function weapon:range/gun/gun/rainbowrifle/load
function weapon:range/gun/gun/rainbowsniper/load
function weapon:range/gun/gun/ultimaterainbowsniper/load
function weapon:range/gun/gun/ultimaterainbowsniperii/load
function weapon:range/gun/gun/ultimaterainbowsniperiii/load
function weapon:range/gun/gun/ultimatepistol/load
function weapon:range/gun/gun/ultimaterifle/load
function weapon:range/gun/gun/ultimateshotgun/load
function weapon:range/gun/gun/ultimatesoaker/load
function weapon:range/gun/gun/ultimateflamethrower/load
function weapon:range/gun/gun/ultimatezapper/load
function weapon:range/gun/gun/ultimatesniper/load
function weapon:range/gun/gun/ultimateeldergun/load
function weapon:range/gun/gun/ultimatesnowballcannon/load
function weapon:range/gun/gun/ultimatemusicgun/load
function weapon:range/gun/gun/ultimaterocketlauncher/load
function weapon:range/gun/gun/ultimateairgun/load
function weapon:range/gun/gun/ultimatemagnum/load
function weapon:range/gun/gun/ultimatemachinegun/load
function weapon:range/gun/gun/ultimatepracticegun/load
function weapon:range/gun/gun/ultimategolddigger/load
function weapon:range/gun/gun/ultimategolddiggerii/load
function weapon:range/gun/gun/ultimategolddiggeriii/load
function weapon:range/gun/gun/ultimategolddiggeriv/load
function weapon:range/gun/gun/ultimategolddiggerv/load
function weapon:range/gun/gun/ultimatedoubleshotgun/load
function weapon:range/gun/gun/ultimatedoubleshotgunii/load
function weapon:range/gun/gun/ultimatedoubleshotguniii/load
function weapon:range/gun/gun/ultimaterainbowrifle/load
function weapon:range/gun/gun/ultimaterainbowrifleii/load
function weapon:range/gun/gun/ultimaterainbowrifleiii/load
function weapon:range/gun/gun/ashesflamethrower/load
function weapon:range/gun/gun/ultimateashesflamethrower/load
function weapon:range/gun/gun/function/load
function weapon:range/gun/gun/blueprint/load
function weapon:range/gun/gun/lament/load
function weapon:range/gun/gun/ultimatelament/load
function weapon:range/gun/gun/aurora/load
function weapon:range/gun/gun/coppergun/load
function weapon:range/gun/gun/exposedcoppergun/load
function weapon:range/gun/gun/oxidizedcoppergun/load
function weapon:range/gun/gun/parallax/load
function weapon:range/gun/gun/rainbowrocketlauncher/load
function weapon:range/gun/gun/rainbowshotgun/load
function weapon:range/gun/gun/resonance/load
function weapon:range/gun/gun/season_autumn/load
function weapon:range/gun/gun/soulflamethrower/load
function weapon:range/gun/gun/ultimateaurora/load
function weapon:range/gun/gun/ultimaterainbowrocketlauncher/load
function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/load
function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/load
function weapon:range/gun/gun/ultimaterainbowshotgun/load
function weapon:range/gun/gun/ultimaterainbowshotgunii/load
function weapon:range/gun/gun/ultimaterainbowshotguniii/load
function weapon:range/gun/gun/ultimateseason_autumn/load
function weapon:range/gun/gun/ultimatesoulflamethrower/load
function weapon:range/gun/gun/weatheredcoppergun/load
scoreboard objectives add weapon.gun_color dummy
function weapon:range/gun/gun/season_spring/load
function weapon:range/gun/gun/ultimateseason_spring/load
function weapon:range/gun/gun/season_summer/load
function weapon:range/gun/gun/ultimateseason_summer/load
function weapon:range/gun/gun/season_winter/load
function weapon:range/gun/gun/ultimateseason_winter/load

# BEGIN ECHO LOAD
function weapon:range/skill/skill/echo/load
# END ECHO LOAD
function weapon:range/gun/gun/paradox/load
