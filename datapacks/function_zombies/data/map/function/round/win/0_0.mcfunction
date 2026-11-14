
function player_stat:revive/revive_self
# R70 victory is a single non-spatial master cue at each participant's feet.
execute unless score round game.state matches 70 run playsound minecraft:entity.ender_dragon.death record @s ~ ~ ~ 5 0
execute if score round game.state matches 70 unless score type map matches 4 run playsound minecraft:entity.ender_dragon.death record @s ~ ~ ~ 5 0
execute if score round game.state matches 70 if score type map matches 4 run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 5 0
title @s reset
title @s times 0 2000 0
title @s title [{translate:zb.game.title.1}]
title @s subtitle [{translate:zb.game.title.2,with:[{score:{name:round,objective:game.state},color:gray}]}]
execute unless score @s stat.times_knock_down = @s stat.times_knock_down run scoreboard players set @s stat.times_knock_down 0
execute unless score @s stat.death = @s stat.death run scoreboard players set @s stat.death 0
execute unless score @s zombie.kill = @s zombie.kill run scoreboard players set @s zombie.kill 0
execute unless score @s stat.player_revived = @s stat.player_revived run scoreboard players set @s stat.player_revived 0
execute unless score @s door.open = @s door.open run scoreboard players set @s door.open 0
function weapon:range/gun/operation
tellraw @s [{translate:zb.game.tellraw.end.1}]
tellraw @s [{translate:zb.game.tellraw.end.2}]
$tellraw @s [{translate:zb.game.tellraw.end.3,with:[{text:"§f§l$(time)§r"},{score:{name:round,objective:game.state},color:red,bold:true}]}]
tellraw @s [{translate:zb.game.tellraw.end.4}]
tellraw @s [{translate:zb.game.tellraw.end.5,with:[{score:{name:"@s",objective:stat.times_knock_down},color:green}]}]
tellraw @s [{translate:zb.game.tellraw.end.6,with:[{score:{name:"@s",objective:stat.death},color:green}]}]
tellraw @s [{translate:zb.game.tellraw.end.7,with:[{score:{name:"@s",objective:zombie.kill},color:green}]}]
tellraw @s [{translate:zb.game.tellraw.end.8,with:[{score:{name:"@s",objective:stat.player_revived},color:green}]}]
tellraw @s [{translate:zb.game.tellraw.end.9,with:[{score:{name:"@s",objective:door.open},color:green}]}]
tellraw @s [{translate:zb.game.tellraw.end.10,with:[{score:{name:"@s",objective:weapon.gun_accuracy},color:green}]},{text:"§a%§r"}]
tellraw @s [{translate:zb.game.tellraw.end.11,with:[{score:{name:"@s",objective:weapon.gun_headshot_accuracy},color:green}]},{text:"§a%§r"}]
tellraw @s [{translate:zb.game.tellraw.end.12}]
tellraw @s [{translate:zb.game.tellraw.end.13}]
