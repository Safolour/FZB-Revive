scoreboard players set #meteor_pending health.damage_skill 0
scoreboard players operation #meteor_pending health.damage_skill = @s health.damage_skill
execute store result score @s health.health run data get entity @s Health 10
scoreboard players set @s health.damage_skill 240
data modify storage revive root.down.target0 set value {translate:"zb.zombie.name.using",with:[{translate:"zb.zombie.name.firelord"},{translate:"zb.zombie.name.firelord.meteor"}]}
function player_stat:health/get_damage/skill/meteor_damage
data remove storage revive root.down.target0
scoreboard players operation @s health.damage_skill = #meteor_pending health.damage_skill
execute store result score @s health.health run data get entity @s Health 10
