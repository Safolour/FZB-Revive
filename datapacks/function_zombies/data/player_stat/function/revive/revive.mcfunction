
scoreboard players operation uuid revive.revive_target = @s revive.revive_target
execute as @a[scores={stat.player=1}] if score @s uuid = uuid revive.revive_target run tellraw @a [{translate:"zb.revive.tellraw.0",with:[{"selector":"@s"},{"selector":"@p[tag=chosen]"}]}]
execute as @a[scores={stat.player=1}] if score @s uuid = uuid revive.revive_target run effect give @s speed 5 1 true
execute as @a[scores={stat.player=1}] if score @s uuid = uuid revive.revive_target run scoreboard players add @s stat.player_revived 1
function player_stat:revive/revive_self