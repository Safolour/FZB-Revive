
execute if score ashes area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/positive/ashes
execute if score crimson area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/positive/crimson
execute if score spirit area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/positive/spirit
execute if score warped area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/positive/warped
execute if score ashes area.reaction.fire matches 1 if score crimson area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/ashes_crimson
execute if score ashes area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/ashes_spirit
execute if score ashes area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/ashes_warped
execute if score crimson area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/crimson_spirit
execute if score crimson area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/crimson_warped
execute if score spirit area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/positive/spirit_warped
