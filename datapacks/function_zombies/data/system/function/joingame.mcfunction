
execute store result score online player_count run execute if entity @a
execute store result score in_game lobby.info run execute if entity @a[scores={system.room=4..}]
execute unless score @s system.quitgame = @s system.quitgame run function mainlobby:joingame
execute if score in_game lobby.info matches 1.. run function mainlobby:joingame
execute if score online player_count matches 2.. if entity @s[scores={system.room=4..}] run tellraw @a[scores={system.room=..3}] [{translate:zb.multiplayer.2,with:[{selector:"@s",color:white}]}]
execute if score online player_count matches 2.. unless entity @s[scores={system.room=4..}] run tellraw @a [{translate:zb.multiplayer.2,with:[{selector:"@s",color:white}]}]
scoreboard players set @s system.quitgame 0
execute store result score @s uuid0 run data get entity @s UUID[0]
execute store result score @s uuid1 run data get entity @s UUID[1]
execute store result score @s uuid2 run data get entity @s UUID[2]
execute store result score @s uuid3 run data get entity @s UUID[3]

scoreboard players set @s system.online 1
function system:joingame0