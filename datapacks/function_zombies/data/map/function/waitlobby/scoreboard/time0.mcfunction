
$team modify waitlobby.scoreboard_line3 prefix [{translate:zb.waitlobby.scoreboard.3},{text:" §a$(time)s§r"}]


execute as @a[scores={system.room=3}] at @s unless items entity @s weapon *[custom_data~{tag:["xpbar"]}] run xp set @s 0 levels
execute as @a[scores={system.room=3}] at @s unless items entity @s weapon *[custom_data~{tag:["xpbar"]}] run xp set @s 0 points
return fail
execute as @a[scores={system.room=3}] at @s unless items entity @s weapon *[custom_data~{tag:["xpbar"]}] run function map:waitlobby/scoreboard/xpmax
$execute as @a[scores={system.room=3}] at @s unless items entity @s weapon *[custom_data~{tag:["xpbar"]}] run xp set @s $(time) levels