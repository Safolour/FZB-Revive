scoreboard players set @s zombie.nuclearbomb 2
scoreboard players add number zombie.nuclearbomb 1

data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.nuclearmissile,color:red}]
execute if score @s[gamemode=adventure] stat.player matches 1 run function player_stat:revive/down
execute if score @s[gamemode=adventure] stat.player matches 2 run function player_stat:revive/death
