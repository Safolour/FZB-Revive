
execute unless entity @s[scores={inventory.lock=1}] run return fail
execute if entity @s[tag=debug] run return fail
function inventory:item_restore0