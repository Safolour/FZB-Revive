# 玩家执行：开始蓄力（充能在发射时才扣）
tag @s add weapon.laser_charge
scoreboard players set @s weapon.laser_c 0
execute store result score @s weapon.laser_yaw run data get entity @s Rotation[0] 1000
execute store result score @s weapon.laser_pitch run data get entity @s Rotation[1] 1000
execute store result score @s weapon.laser_slot run data get entity @s SelectedItemSlot
effect give @s slowness 2 255 true
attribute @s jump_strength base set -1
playsound entity.warden.sonic_charge record @a ~ ~ ~ 2 1.5 0
