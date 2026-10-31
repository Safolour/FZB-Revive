
execute if entity @s[type=player] run scoreboard players operation uuid area.reaction.fire_bar.uuid = @s uuid
execute if entity @s[type=!player] run scoreboard players operation uuid area.reaction.fire_bar.uuid = @s zombie.uuid
execute at @s run function map:area/lab/reaction/fire/bar/summon
function map:area/lab/reaction/fire/bar/tp
scoreboard players set @e[type=armor_stand,tag=bar,scores={area.reaction.fire_bar=2}] area.reaction.fire_bar 1