
execute if score ashes area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/mob/negative/ashes
execute if score crimson area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/mob/negative/crimson
execute if score spirit area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/mob/negative/spirit
execute if score warped area.reaction.fire matches 2.. run return run function map:area/lab/reaction/fire/effect/mob/negative/warped
execute if score ashes area.reaction.fire matches 1 if score crimson area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/ashes_crimson
execute if score ashes area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/ashes_spirit
execute if score ashes area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/ashes_warped
execute if score crimson area.reaction.fire matches 1 if score spirit area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/crimson_spirit
execute if score crimson area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/crimson_warped
execute if score spirit area.reaction.fire matches 1 if score warped area.reaction.fire matches 1 run return run function map:area/lab/reaction/fire/effect/mob/negative/spirit_warped
