

scoreboard players set crimson area.reaction.fire 0
scoreboard players set warped area.reaction.fire 0
scoreboard players set ashes area.reaction.fire 0
scoreboard players set spirit area.reaction.fire 0
scoreboard players set player area.reaction.fire 0
scoreboard players set mob area.reaction.fire 0

execute if entity @s[type=player] run data modify storage area root.reaction.fire.list set from entity @s EnderItems[{Slot:26b}].components."minecraft:custom_data".root.area.reaction
execute if entity @s[type=!player] run data modify storage area root.reaction.fire.list set from entity @s data.root.area.reaction

execute if data storage area root.reaction.fire.list[0] run function map:area/lab/reaction/fire/effect/detect0
data remove storage area root