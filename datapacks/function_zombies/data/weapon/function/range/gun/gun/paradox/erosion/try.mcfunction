tag @s remove weapon.pd_f
execute unless dimension minecraft:overworld run return 0
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"paradox"}] run return 0
execute unless score @s stat.player matches 1 run return 0
execute unless score @s weapon.pd_state matches 0 run return 0
execute if score @s weapon.pd_fcd matches 1.. run return run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5
execute unless function weapon:range/gun/gun/paradox/room/read run return run tag @s add weapon.pd_f
function weapon:range/gun/gun/paradox/count
scoreboard players set @s weapon.pd_fcd 300
tag @s add paradox.erosion_owner
scoreboard players operation #owner weapon.pd_owner = @s uuid
scoreboard players operation #previous weapon.state = @s weapon.use
scoreboard players set @s weapon.use 10081
scoreboard players set gun weapon.use 10081
scoreboard players set #hit_counted weapon.state 0
scoreboard players set #head_counted weapon.state 0
playsound entity.puffer_fish.death player @a ~ ~ ~ 1 0
playsound item.trident.thunder record @a ~ ~ ~ 1.5 1
playsound item.totem.use record @a ~ ~ ~ 1.5 1
# Captures require a successful Paradox bullet hit by this owner, not proximity to the caster.
scoreboard players operation #erosion_owner weapon.pd_owner = @s uuid
execute as @e[type=marker,tag=paradox.mark] if score @s weapon.pd_owner = #erosion_owner weapon.pd_owner at @s run function weapon:range/gun/gun/paradox/erosion/marked with entity @s data
scoreboard players operation @s weapon.use = #previous weapon.state
tag @s remove paradox.erosion_owner
function weapon:range/gun/gun/paradox/count
