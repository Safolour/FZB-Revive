
scoreboard players remove @s[scores={title.color.enable=1..}] title.color.enable 1
execute unless score @s title.color.enable = @s title.color.enable run scoreboard players set @s title.color.enable 0

function map:area/tick0
function map:perk/tick
execute if entity @s[scores={system.room=3}] run function map:waitlobby/tick0
execute unless entity @s[scores={system.room=4}] run return fail
function map:game/tick0
function map:shop/tick2
function map:window/tick
function map:path/tick0
