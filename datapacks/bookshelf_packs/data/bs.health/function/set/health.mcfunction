
advancement revoke @s only bs.health:on_heal
advancement revoke @s only bs.health:on_before_heal
execute store result score @s bs.health0 run data get entity @s Health 100000
execute store result score #m bs.ctx run attribute @s minecraft:max_health get 100000
$execute store result score @s bs.hmod run data get storage bs:const health.point $(points)
scoreboard players operation @s bs.health = #m bs.ctx
scoreboard players operation @s bs.hmod < #m bs.ctx
scoreboard players operation @s bs.hmod -= @s bs.health0
scoreboard players operation #m bs.ctx -= @s bs.health0
execute if score @s bs.hmod matches ..-1 run return run function bs.health:utils/decrease_health
execute if score @s bs.hmod matches 1.. run return run function bs.health:utils/increase_health
