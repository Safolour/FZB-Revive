execute store result score online player_count run execute if entity @a
execute store result score in_game lobby.info run execute if entity @a[scores={system.room=4..}]
execute unless score @s system.quitgame = @s system.quitgame run function mainlobby:joingame
execute if score in_game lobby.info matches 1.. run function mainlobby:joingame
scoreboard players set @s system.quitgame 0
execute store result score @s uuid0 run data get entity @s UUID[0]
execute store result score @s uuid1 run data get entity @s UUID[1]
execute store result score @s uuid2 run data get entity @s UUID[2]
execute store result score @s uuid3 run data get entity @s UUID[3]

function system:joingame0