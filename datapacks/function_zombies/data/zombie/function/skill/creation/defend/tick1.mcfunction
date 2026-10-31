
tag @s add chosen
tag @s add if
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
particle crit ~ ~0.25 ~
scoreboard players add @s zombie.creation.defend 1
execute on passengers if entity @s run tag @n[tag=chosen] remove if
scoreboard players set @s[tag=if] zombie.creation.defend 447
execute if score @s zombie.creation.defend matches ..50 run function zombie:skill/creation/defend/tp
execute if score @s zombie.creation.defend matches 50.. run function zombie:skill/creation/defend/tp1
execute positioned ~ ~-1.5 ~ as @a[scores={stat.player=1},distance=..1] run function zombie:skill/creation/defend/damage
tp @s ^ ^ ^0.6
tag @s remove chosen
execute unless score @s zombie.creation.defend matches 200.. run return fail
function system:death
execute if score @s zombie.creation.defend matches 4470 run return run execute as @e[tag=mob,tag=!tp,tag=skill.creation.defend.noweapon] if score @s zombie.uuid = uuid zombie.uuid run function zombie:skill/creation/defend/get_back
particle block{block_state:stone} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
particle item{item:iron_pickaxe} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
