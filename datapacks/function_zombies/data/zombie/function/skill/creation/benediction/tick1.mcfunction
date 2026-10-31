
tag @s add chosen
tag @s add if
scoreboard players operation uuid zombie.uuid = @s zombie.uuid
particle crit ~ ~0.25 ~ 0 0 0 0 1 force @a[scores={particle=0}]
scoreboard players add @s zombie.creation.benediction 1
execute on passengers if entity @s run tag @n[tag=chosen] remove if
scoreboard players set @s[tag=if] zombie.creation.benediction 447
execute if score @s zombie.creation.benediction matches ..50 run function zombie:skill/creation/benediction/tp
execute if score @s zombie.creation.benediction matches 50.. run function zombie:skill/creation/benediction/tp1
execute positioned ~ ~-1.5 ~ as @a[scores={stat.player=1},distance=..1] run function zombie:skill/creation/benediction/damage
tp @s ^ ^ ^0.6
tag @s remove chosen
execute unless score @s zombie.creation.benediction matches 200.. run return fail
function system:death
execute if score @s zombie.creation.benediction matches 4470 run return run execute as @e[tag=mob,tag=!tp,tag=skill.creation.benediction.noweapon] if score @s zombie.uuid = uuid zombie.uuid run function zombie:skill/creation/benediction/get_back
particle block{block_state:stone} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
particle item{item:diamond_pickaxe} ~ ~0.25 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
