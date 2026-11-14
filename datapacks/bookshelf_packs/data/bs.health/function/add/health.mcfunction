
$execute store result score #p bs.ctx run data get storage bs:const health.point $(points)
# Instant healing finishes when effects tick. Combine another request with the
# pending amount instead of replacing it (e.g. a skill followed by regeneration).
execute if score @s bs.hmod matches 1.. if data entity @s active_effects[{id:"minecraft:instant_health",amplifier:28b}] run return run function bs.health:utils/add_pending
scoreboard players reset @s bs.hmod
scoreboard players set @s bs.ctx 1
advancement revoke @s only bs.health:on_heal
advancement revoke @s only bs.health:on_before_heal
execute store result score @s bs.health0 run data get entity @s Health 100000
execute store result score #m bs.ctx run attribute @s minecraft:max_health get 100000
scoreboard players operation @s bs.health = #m bs.ctx
scoreboard players operation #m bs.ctx -= @s bs.health0
scoreboard players operation @s bs.hmod = #p bs.ctx
scoreboard players operation @s bs.hmod < #m bs.ctx
execute if score @s bs.hmod matches ..-1 run return run function bs.health:utils/decrease_health
execute if score @s bs.hmod matches 1.. run return run function bs.health:utils/increase_health
