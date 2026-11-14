tag @s remove weapon.pd_q
execute unless items entity @s weapon.mainhand *[custom_data~{gun:"paradox"}] run return 0
execute unless score @s stat.player matches 1 run return 0
execute if score @s weapon.pd_state matches 2 run return run function weapon:range/gun/gun/paradox/dream/leave
execute unless score @s weapon.pd_state matches 0 run return 0
execute if score @s weapon.pd_qcd matches 1.. run return run playsound block.note_block.bass record @s ~ ~ ~ 1 0.5
execute unless dimension minecraft:overworld run return 0
function weapon:range/gun/gun/paradox/count
execute if score @s weapon.pd_count matches 0 run return 0
execute unless function weapon:range/gun/gun/paradox/room/read run return run tag @s add weapon.pd_q
scoreboard players set @s weapon.pd_state 1
scoreboard players set @s weapon.pd_time 0
execute store result score @s weapon.pd_x run data get entity @s Pos[0] 1000
execute store result score @s weapon.pd_y run data get entity @s Pos[1] 1000
execute store result score @s weapon.pd_z run data get entity @s Pos[2] 1000
effect give @s slowness 5 255 true
function weapon:range/gun/gun/paradox/dream/attributes_save
attribute @s jump_strength base set -1
effect give @s nausea 7 2 true
playsound block.respawn_anchor.deplete record @s ~ ~ ~ 2 0
