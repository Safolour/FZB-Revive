$execute unless data storage round mob_spawn_list[{round:$(round)}] run tellraw @s {text:"找不到第 $(round) 回合数据。"}
$execute unless data storage round mob_spawn_list[{round:$(round)}] run return fail
execute unless score type map matches 4 run tellraw @s {text:"/round 目前只支持 PL 对局。"}
execute unless score type map matches 4 run return fail
execute unless score #game_active round matches 1 run tellraw @s {text:"当前没有进行中的对局。"}
execute unless score #game_active round matches 1 run return fail

function _:debug/mob_kill
kill @e[tag=mob]
kill @e[tag=mob.skill]
kill @e[type=marker,tag=skill.creation.rampart.shield]
kill @e[type=ghast,tag=firelord.p2.ghast]
kill @e[type=item,tag=powerup]

scoreboard players set debug round 0
scoreboard players set tick round 1
$scoreboard players set round game.state $(round)
function _:debug/round/round_restart
$tellraw @s {text:"已切换到第 $(round) 回合。"}
