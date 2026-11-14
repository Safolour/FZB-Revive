execute unless score @s system.quitgame matches 0 run function system:joingame
function mainlobby:tick0
execute if score @s system.room matches 1 run tag @s add fzb.lobby_jump
execute unless score @s system.room matches 1 run tag @s remove fzb.lobby_jump
# Only the main lobby suppresses fall damage; preserve the player's base attribute.
execute if score @s system.room matches 1 unless data entity @s attributes[{id:"minecraft:fall_damage_multiplier",modifiers:[{id:"mainlobby:lobby_no_fall"}]}] run attribute @s minecraft:fall_damage_multiplier modifier add mainlobby:lobby_no_fall -1 add_multiplied_total
execute unless score @s system.room matches 1 if data entity @s attributes[{id:"minecraft:fall_damage_multiplier",modifiers:[{id:"mainlobby:lobby_no_fall"}]}] run attribute @s minecraft:fall_damage_multiplier modifier remove mainlobby:lobby_no_fall
