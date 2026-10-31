
execute if score ashes area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/negative/ashes
execute if score crimson area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/negative/crimson
execute if score spirit area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/negative/spirit
execute if score warped area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/player/negative/warped
execute if score ashes area.reaction.fire matches 1 if score crimson area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/ashes_crimson
execute if score ashes area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/ashes_spirit
execute if score ashes area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/ashes_warped
execute if score crimson area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/crimson_spirit
execute if score crimson area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/crimson_warped
execute if score spirit area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/player/negative/spirit_warped
