
execute if entity @s[scores={bs.ctx=1}] run return run scoreboard players set @s bs.ctx 2
scoreboard players set @s bs.ctx 1
advancement revoke @s only bs.health:on_heal
advancement revoke @s only bs.health:on_before_heal
scoreboard players operation #m bs.ctx = @s bs.health
scoreboard players operation @s bs.hmod -= #m bs.ctx
execute store result storage bs:ctx y float 0.00001 run scoreboard players get @s bs.hmod
function bs.health:utils/apply_health with storage bs:ctx