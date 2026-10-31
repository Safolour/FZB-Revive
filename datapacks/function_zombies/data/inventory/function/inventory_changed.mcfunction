
tag @s add inventory.changed
execute if items entity @s weapon.offhand * run function interaction:zhf
execute if items entity @s weapon.offhand * run function inventory:item_restore

advancement revoke @s only inventory:inventory_changed
function weapon:range/gun/slot/get_slot/0

execute unless score @s inventory.lock matches 1.. run return run tag @s remove inventory.changed
execute if score @s inventory matches 3 run return run tag @s remove inventory.changed
execute if score @s inventory matches 2 run return fail

tag @s remove inventory.changed

execute if score @s inventory matches 1 run function inventory:item_restore
function weapon:range/gun/slot/get_slot/0