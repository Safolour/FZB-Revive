
execute store result score in_game player_count run execute if entity @a[scores={system.room=3..}]
execute if score in_game player_count matches ..5 run return fail
scoreboard players set scoreboard game.state 2
scoreboard players reset §1§1§r game.scoreboard
scoreboard players reset §1§3§r game.scoreboard
scoreboard players reset §1§4§r game.scoreboard
scoreboard players reset §1§5§r game.scoreboard
scoreboard players reset §1§8§r game.scoreboard