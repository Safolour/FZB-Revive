scoreboard players operation #charge.phase origin.tool_cfg = @s origin.cast
scoreboard players remove #charge.phase origin.tool_cfg 2
scoreboard players operation #charge.angle origin.tool_cfg = #charge.phase origin.tool_cfg
scoreboard players set #charge.five origin.tool_cfg 5
scoreboard players operation #charge.angle origin.tool_cfg *= #charge.five origin.tool_cfg
execute store result storage origin_tool light_fx.yaw int 1 run scoreboard players get #charge.angle origin.tool_cfg
function zombie:skill/creation/origin/lightning/charge_ring with storage origin_tool light_fx
scoreboard players set #charge.ten origin.tool_cfg 10
scoreboard players operation #charge.phase origin.tool_cfg %= #charge.ten origin.tool_cfg
scoreboard players set #charge.quarter origin.tool_cfg 25
scoreboard players operation #charge.phase origin.tool_cfg *= #charge.quarter origin.tool_cfg
scoreboard players set #charge.radius origin.tool_cfg 525
scoreboard players operation #charge.radius origin.tool_cfg -= #charge.phase origin.tool_cfg
function zombie:skill/creation/origin/lightning/charge_rays
scoreboard players remove #charge.radius origin.tool_cfg 250
execute if score @s origin.cast matches 12.. run function zombie:skill/creation/origin/lightning/charge_rays
