playsound minecraft:entity.iron_golem.attack hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 1.5 1
playsound minecraft:entity.zombie.break_wooden_door hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 1.5 1.7
playsound minecraft:block.piston.extend hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 1.5 1.7
playsound minecraft:block.glass.break hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 1.5 2
playsound minecraft:block.chorus_flower.grow hostile @a[scores={system.room=4..},distance=..64] ~ ~ ~ 1.5 1
execute positioned ~ ~1.35 ~ facing entity @e[type=zombie,tag=origin.brutality.attacker,sort=nearest,limit=1] eyes rotated ~ 0 positioned ^ ^ ^1 run function zombie:skill/creation/origin/brutality/cross
particle block{block_state:redstone_block} ~ ~1.3 ~ 0 0 0 0 20 force @a[scores={particle=0},distance=..48]
scoreboard players set #origin.brutality.resisted health.damage_resisted 0
scoreboard players operation #origin.brutality.resisted health.damage_resisted = @s health.damage_resisted
data modify storage revive root.down.target0 set value [{translate:"zb.zombie.name.creation.origin"}]
execute store result score @s health.health run data get entity @s Health 10
scoreboard players operation damage health.damage_skill = #origin.brutality zombie.skill.damage
function player_stat:health/get_damage/skill/r70_get_damage {source:origin.brutality}
execute store result score @s health.health run data get entity @s Health 10
data remove storage revive root.down
scoreboard players operation @s health.damage_resisted = #origin.brutality.resisted health.damage_resisted
