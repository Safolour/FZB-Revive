
$execute store result score #p bs.ctx run data get storage bs:const health.point $(points)
execute store result score #m bs.ctx run attribute @s minecraft:max_health get 100000
execute store result storage bs:ctx y double .00001 run scoreboard players operation #m bs.ctx += #p bs.ctx
function bs.health:utils/set_max_health with storage bs:ctx
