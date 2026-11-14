scoreboard players operation #charge.phase origin.tool_cfg = @s origin.cast
scoreboard players remove #charge.phase origin.tool_cfg 2
scoreboard players operation #charge.angle origin.tool_cfg = #charge.phase origin.tool_cfg
scoreboard players set #charge.five origin.tool_cfg 5
scoreboard players operation #charge.angle origin.tool_cfg *= #charge.five origin.tool_cfg
execute store result storage origin_tool light_fx.yaw int 1 run scoreboard players get #charge.angle origin.tool_cfg
function zombie:skill/creation/origin/lightning/large_charge_ring with storage origin_tool light_fx
scoreboard players set #charge.ten origin.tool_cfg 10
scoreboard players operation #charge.phase origin.tool_cfg %= #charge.ten origin.tool_cfg
scoreboard players set #charge.step origin.tool_cfg 5
scoreboard players operation #charge.phase origin.tool_cfg *= #charge.step origin.tool_cfg
scoreboard players set #charge.radius origin.tool_cfg 200
scoreboard players operation #charge.radius origin.tool_cfg -= #charge.phase origin.tool_cfg
execute if score @s origin.cast matches 2.. run function zombie:skill/creation/origin/lightning/large_charge_rays
scoreboard players remove #charge.radius origin.tool_cfg 50
execute if score @s origin.cast matches 12.. run function zombie:skill/creation/origin/lightning/large_charge_rays
scoreboard players remove #charge.radius origin.tool_cfg 50
execute if score @s origin.cast matches 22.. run function zombie:skill/creation/origin/lightning/large_charge_rays
scoreboard players remove #charge.radius origin.tool_cfg 50
execute if score @s origin.cast matches 32.. run function zombie:skill/creation/origin/lightning/large_charge_rays
