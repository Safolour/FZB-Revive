scoreboard players set @s powerup.timer -1
tag @p[scores={stat.player=1}] add chosen
$function map:powerup/presentation/pickup {powerup:"$(powerup)",objective:"powerup.timer",duration_holder:"$(powerup)",duration_objective:"powerup.timer",storage:"powerup",picker:"@p[tag=chosen]",chat_players:"@a[scores={system.room=4}]",title_players:"@a[scores={system.room=4..}]",color_players:"@a[scores={system.room=4..,title.color.enable=0}]"}
tag @a[tag=chosen] remove chosen

$function map:powerup/pickup/$(powerup)
$execute unless score $(powerup) powerup.timer matches 1.. run return fail
$function map:powerup/presentation/bar_append {storage:"powerup",powerup:"$(powerup)"}
$scoreboard players operation timer powerup.timer.$(powerup) = $(powerup) powerup.timer
