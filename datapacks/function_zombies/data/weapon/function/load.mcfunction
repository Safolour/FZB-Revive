scoreboard objectives add weapon.use dummy
scoreboard objectives add weapon.state dummy
scoreboard objectives add weapon.range dummy
scoreboard objectives add weapon.rightclick minecraft.used:carrot_on_a_stick
scoreboard objectives add weapon.leftclick dummy

function weapon:range/load
function weapon:melee/load

data modify storage weapon upgrade set value {\
    ultimatepistol:pistol,\
    ultimaterifle:rifle,\
    ultimateshotgun:shotgun,\
    ultimatesoaker:soaker,\
    ultimateflamethrower:flamethrower,\
    ultimatelament:lament,\
    ultimateashesflamethrower:ashesflamethrower,\
    ultimatezapper:zapper,\
    ultimatesniper:sniper,\
    ultimateeldergun:eldergun,\
    ultimatesnowballcannon:snowballcannon,\
    ultimatemusicgun:musicgun,\
    ultimaterocketlauncher:rocketlauncher,\
    ultimateairgun:airgun,\
    ultimatemagnum:magnum,\
    ultimatemachinegun:machinegun,\
    ultimatepracticegun:practicegun,\
    ultimategolddigger:golddigger,\
    ultimategolddiggerii:ultimategolddigger,\
    ultimategolddiggeriii:ultimategolddiggerii,\
    ultimategolddiggeriv:ultimategolddiggeriii,\
    ultimategolddiggerv:ultimategolddiggeriv,\
    ultimatedoubleshotgun:doubleshotgun,\
    ultimatedoubleshotgunii:ultimatedoubleshotgun,\
    ultimatedoubleshotguniii:ultimatedoubleshotgunii,\
    ultimaterainbowrifle:rainbowrifle,\
    ultimaterainbowrifleii:ultimaterainbowrifle,\
    ultimaterainbowrifleiii:ultimaterainbowrifleii,\
    ultimateknife:knife,\
    ultimatepuncher:puncher,\
}
data modify storage weapon upgrade.ultimateaurora set value "aurora"
data modify storage weapon upgrade.coppergun set value "exposedcoppergun"
data modify storage weapon upgrade.weatheredcoppergun set value "oxidizedcoppergun"
data modify storage weapon upgrade.ultimaterainbowrocketlauncher set value "rainbowrocketlauncher"
data modify storage weapon upgrade.ultimaterainbowshotgun set value "rainbowshotgun"
data modify storage weapon upgrade.ultimateseason_autumn set value "season_autumn"
data modify storage weapon upgrade.ultimatesoulflamethrower set value "soulflamethrower"
data modify storage weapon upgrade.ultimaterainbowrocketlauncherii set value "ultimaterainbowrocketlauncher"
data modify storage weapon upgrade.ultimaterainbowrocketlauncheriii set value "ultimaterainbowrocketlauncherii"
data modify storage weapon upgrade.ultimaterainbowshotgunii set value "ultimaterainbowshotgun"
data modify storage weapon upgrade.ultimaterainbowshotguniii set value "ultimaterainbowshotgunii"
data modify storage weapon upgrade.exposedcoppergun set value "weatheredcoppergun"
data modify storage weapon upgrade.ultimateseason_spring set value "season_spring"
data modify storage weapon upgrade.ultimateseason_summer set value "season_summer"
data modify storage weapon upgrade.ultimateseason_winter set value "season_winter"

data modify storage weapon upgrade.ultimaterainbowsniper set value "rainbowsniper"
data modify storage weapon upgrade.ultimaterainbowsniperii set value "ultimaterainbowsniper"
data modify storage weapon upgrade.ultimaterainbowsniperiii set value "ultimaterainbowsniperii"
