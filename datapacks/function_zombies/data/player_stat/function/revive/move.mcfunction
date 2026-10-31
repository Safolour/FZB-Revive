
scoreboard players operation uuid uuid = @s uuid
$execute as @e[type=item_display,tag=aj.player_display.root] at @s if score @s revive.player_model.uuid = uuid uuid run tp @s ~$(x) ~$(y) ~$(z)
$execute as @e[type=armor_stand,tag=player_stat,tag=revive] at @s if score @s revive.uuid = uuid uuid run tp @s ~$(x) ~$(y) ~$(z)