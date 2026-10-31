
$team add game.player.$(uuid)
$team modify game.player.$(uuid) prefix "§f$(name)§r"
$team modify game.player.$(uuid) suffix " §f: §60§r"
$scoreboard players set §2§$(d9)§$(d8)§$(d7)§$(d6)§$(d5)§$(d4)§$(d3)§$(d2)§$(d1)§$(d0)§r game.scoreboard 16
$scoreboard players operation §2§$(d9)§$(d8)§$(d7)§$(d6)§$(d5)§$(d4)§$(d3)§$(d2)§$(d1)§$(d0)§r game.scoreboard -= #scoreboard_next game.player

$team join game.player.$(uuid) §2§$(d9)§$(d8)§$(d7)§$(d6)§$(d5)§$(d4)§$(d3)§$(d2)§$(d1)§$(d0)§r

$execute if data storage stat root.player_list.game[{name:$(name)}] run return fail
$data modify storage stat root.player_list.game append value {uuid:$(uuid),name:$(name)}
$execute if score type map matches 3 run data modify storage stat root.player_list.game[{uuid:$(uuid),name:$(name)}].type set value 3
$execute if score type map matches 4 run data modify storage stat root.player_list.game[{uuid:$(uuid),name:$(name)}].type set value 4
