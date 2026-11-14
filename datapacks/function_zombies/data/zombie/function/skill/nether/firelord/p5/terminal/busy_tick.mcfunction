scoreboard players operation #owner fl.owner = @s fl.owner
scoreboard players set #present fl.term 0
execute as @a[tag=fl.using] if score @s uuid = #owner fl.owner run scoreboard players set #present fl.term 1
execute if score #present fl.term matches 0 run tag @s remove fl.busy
