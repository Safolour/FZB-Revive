

# stat.health 的准则是只读的 health，会自动同步；1.21.8 下写入只读分数会抛异常并中止整个 system:tick，因此移除原来的初始化写入
#execute unless score @s stat.health = @s stat.health store result score @s stat.health run data get entity @s Health 1
execute unless score @s stat.max_health = @s stat.max_health run scoreboard players set @s stat.max_health 20
execute if entity @s[nbt={HurtTime:9s}] run function player_stat:take_damage

execute if entity @s[scores={stat.player=1}] at @s run function player_stat:burn/tick
function player_stat:attack/tick
function player_stat:health/tick

scoreboard players remove @s[scores={revive.cooldown=0..}] revive.cooldown 1
execute if entity @s[scores={stat.player=2}] at @s run function player_stat:revive/tick
execute if entity @s[scores={stat.player=1}] at @s run function player_stat:revive/tick0
execute if entity @s[scores={stat.player=3}] at @s run title @s actionbar [{translate:zb.player.actionbar.0}]

advancement revoke @s[advancements={player_stat:right_hold=true}] only player_stat:right_hold