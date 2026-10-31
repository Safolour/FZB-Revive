
execute if data storage area root.reaction.fire.list[0].type.crimson run scoreboard players add crimson area.reaction.fire 1
execute if data storage area root.reaction.fire.list[0].type.warped run scoreboard players add warped area.reaction.fire 1
execute if data storage area root.reaction.fire.list[0].type.ashes run scoreboard players add ashes area.reaction.fire 1
execute if data storage area root.reaction.fire.list[0].type.spirit run scoreboard players add spirit area.reaction.fire 1
execute if data storage area root.reaction.fire.list[0].source.mob run scoreboard players add mob area.reaction.fire 1
execute if data storage area root.reaction.fire.list[0].source.player run scoreboard players add player area.reaction.fire 1
data remove storage area root.reaction.fire.list[0]
execute if data storage area root.reaction.fire.list[0] run function map:area/lab/reaction/fire/effect/detect0