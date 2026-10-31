
effect clear @s minecraft:instant_health
execute store result storage bs:ctx y double 0.00001 run scoreboard players operation @s bs.hmod -= #m bs.ctx
function bs.health:utils/apply_health with storage bs:ctx
