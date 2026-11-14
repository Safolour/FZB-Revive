tag @s remove gethit
# 命中检测在子弹前方 0.5 格处进行，爆头判定也在同一点上做
execute positioned ^ ^ ^0.5 run function weapon:range/gun/detect/hitbox
execute if entity @s[tag=firelord.p2.ghast,tag=hit] run return run function weapon:range/gun/detect/invulnerable_hit
execute if entity @s[type=marker,tag=skill.creation.rampart.shield] run scoreboard players set penetrable weapon.state 0
execute if entity @s[type=marker,tag=skill.creation.rampart.shield] run scoreboard players set reflection weapon.state 0
execute if score penetrable weapon.state matches 1.. run scoreboard players remove penetrable weapon.state 1
execute if score reflection weapon.state matches 1.. run scoreboard players remove reflection weapon.state 1

execute if score penetrable weapon.state matches 1.. run tag @s add penetrable
execute unless score gun weapon.use matches 10010 unless score gun weapon.use matches 10025 run scoreboard players set reflection weapon.state 0
execute unless score reflection weapon.state matches 1.. unless score penetrable weapon.state matches 1.. if entity @s[tag=hit] run scoreboard players set range weapon.range 8888

execute if score gun weapon.use matches 10001 run function weapon:range/gun/gun/pistol/hit
execute if score gun weapon.use matches 10002 run function weapon:range/gun/gun/rifle/hit
execute if score gun weapon.use matches 10003 run function weapon:range/gun/gun/shotgun/hit
execute if score gun weapon.use matches 10004 run function weapon:range/gun/gun/soaker/hit
execute if score gun weapon.use matches 10005 run function weapon:range/gun/gun/flamethrower/hit
execute if score gun weapon.use matches 10006 run function weapon:range/gun/gun/zapper/hit
execute if score gun weapon.use matches 10007 run function weapon:range/gun/gun/sniper/hit
execute if score gun weapon.use matches 10008 run function weapon:range/gun/gun/eldergun/hit
execute if score gun weapon.use matches 10010 run function weapon:range/gun/gun/musicgun/hit
execute if score gun weapon.use matches 10012 run function weapon:range/gun/gun/airgun/hit
execute if score gun weapon.use matches 10013 run function weapon:range/gun/gun/magnum/hit
execute if score gun weapon.use matches 10014 run function weapon:range/gun/gun/machinegun/hit
execute if score gun weapon.use matches 10015 run function weapon:range/gun/gun/practicegun/hit
execute if score gun weapon.use matches 10016 run function weapon:range/gun/gun/ultimatepistol/hit
execute if score gun weapon.use matches 10017 run function weapon:range/gun/gun/ultimatezapper/hit
execute if score gun weapon.use matches 10018 run function weapon:range/gun/gun/ultimatesoaker/hit
execute if score gun weapon.use matches 10020 run function weapon:range/gun/gun/ultimatesniper/hit
execute if score gun weapon.use matches 10021 run function weapon:range/gun/gun/ultimateshotgun/hit
execute if score gun weapon.use matches 10023 run function weapon:range/gun/gun/ultimaterifle/hit
execute if score gun weapon.use matches 10024 run function weapon:range/gun/gun/ultimatepracticegun/hit
execute if score gun weapon.use matches 10025 run function weapon:range/gun/gun/ultimatemusicgun/hit
execute if score gun weapon.use matches 10026 run function weapon:range/gun/gun/ultimatemagnum/hit
execute if score gun weapon.use matches 10027 run function weapon:range/gun/gun/ultimatemachinegun/hit
execute if score gun weapon.use matches 10028 run function weapon:range/gun/gun/ultimateflamethrower/hit
execute if score gun weapon.use matches 10029 run function weapon:range/gun/gun/ultimateeldergun/hit
execute if score gun weapon.use matches 10030 run function weapon:range/gun/gun/ultimateairgun/hit
execute if score gun weapon.use matches 10031 run function weapon:range/gun/gun/golddigger/hit
execute if score gun weapon.use matches 10032 run function weapon:range/gun/gun/ultimategolddigger/hit
execute if score gun weapon.use matches 10033 run function weapon:range/gun/gun/ultimategolddiggerii/hit
execute if score gun weapon.use matches 10034 run function weapon:range/gun/gun/ultimategolddiggeriii/hit
execute if score gun weapon.use matches 10035 run function weapon:range/gun/gun/ultimategolddiggeriv/hit
execute if score gun weapon.use matches 10036 run function weapon:range/gun/gun/ultimategolddiggerv/hit
execute if score gun weapon.use matches 10037 run function weapon:range/gun/gun/doubleshotgun/hit
execute if score gun weapon.use matches 10038 run function weapon:range/gun/gun/ultimatedoubleshotgun/hit
execute if score gun weapon.use matches 10039 run function weapon:range/gun/gun/ultimatedoubleshotgunii/hit
execute if score gun weapon.use matches 10040 run function weapon:range/gun/gun/ultimatedoubleshotguniii/hit
execute if score gun weapon.use matches 10041 run function weapon:range/gun/gun/rainbowrifle/hit
execute if score gun weapon.use matches 10042 run function weapon:range/gun/gun/ultimaterainbowrifle/hit
execute if score gun weapon.use matches 10043 run function weapon:range/gun/gun/ultimaterainbowrifleii/hit
execute if score gun weapon.use matches 10044 run function weapon:range/gun/gun/ultimaterainbowrifleiii/hit
execute if score gun weapon.use matches 10077 run function weapon:range/gun/gun/rainbowsniper/hit
execute if score gun weapon.use matches 10078 run function weapon:range/gun/gun/ultimaterainbowsniper/hit
execute if score gun weapon.use matches 10079 run function weapon:range/gun/gun/ultimaterainbowsniperii/hit
execute if score gun weapon.use matches 10080 run function weapon:range/gun/gun/ultimaterainbowsniperiii/hit
execute if score gun weapon.use matches 10047 run function weapon:range/gun/gun/function/hit
execute if score gun weapon.use matches 10048 run function weapon:range/gun/gun/blueprint/hit
execute if score gun weapon.use matches 10049 run function weapon:range/gun/gun/lament/hit
execute if score gun weapon.use matches 10050 run function weapon:range/gun/gun/ultimatelament/hit

execute if score gun weapon.use matches 10052 run function weapon:range/gun/gun/coppergun/hit
execute if score gun weapon.use matches 10053 run function weapon:range/gun/gun/exposedcoppergun/hit
execute if score gun weapon.use matches 10054 run function weapon:range/gun/gun/oxidizedcoppergun/hit
execute if score gun weapon.use matches 10057 run function weapon:range/gun/gun/rainbowshotgun/hit
execute if score gun weapon.use matches 10059 run function weapon:range/gun/gun/season_autumn/hit
execute if score gun weapon.use matches 10060 run function weapon:range/gun/gun/soulflamethrower/hit
execute if score gun weapon.use matches 10065 run function weapon:range/gun/gun/ultimaterainbowshotgun/hit
execute if score gun weapon.use matches 10066 run function weapon:range/gun/gun/ultimaterainbowshotgunii/hit
execute if score gun weapon.use matches 10067 run function weapon:range/gun/gun/ultimaterainbowshotguniii/hit
execute if score gun weapon.use matches 10068 run function weapon:range/gun/gun/ultimateseason_autumn/hit
execute if score gun weapon.use matches 10069 run function weapon:range/gun/gun/ultimatesoulflamethrower/hit
execute if score gun weapon.use matches 10070 run function weapon:range/gun/gun/weatheredcoppergun/hit
execute if score gun weapon.use matches 10071 run function weapon:range/gun/gun/season_spring/hit
execute if score gun weapon.use matches 10072 run function weapon:range/gun/gun/ultimateseason_spring/hit
execute if score gun weapon.use matches 10073 run function weapon:range/gun/gun/season_summer/hit
execute if score gun weapon.use matches 10074 run function weapon:range/gun/gun/ultimateseason_summer/hit
execute if score gun weapon.use matches 10075 run function weapon:range/gun/gun/season_winter/hit
execute if score gun weapon.use matches 10076 run function weapon:range/gun/gun/ultimateseason_winter/hit

tag @s remove hit
tag @s remove hit1
tag @s remove hit2
execute if score gun weapon.use matches 10081 run function weapon:range/gun/gun/paradox/hit
