# 磁吸瞄准点（执行者 = 目标，位置 = 目标脚下）：放在脚和眼睛的中点
# 原来固定瞄脚上 0.8 格，小蠹虫（高 0.3）、小僵尸（高 0.975）这种矮的会瞄到头顶上方，投射物被拉着在它上面来回抽
execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["perk_magnet_aim"]}
execute store result score #feet perk run data get entity @s Pos[1] 1000
execute store result score #eye perk run data get entity @n[type=marker,tag=perk_magnet_aim] Pos[1] 1000
scoreboard players operation #eye perk += #feet perk
scoreboard players operation #eye perk /= 2 number
execute store result entity @n[type=marker,tag=perk_magnet_aim] Pos[1] double 0.001 run scoreboard players get #eye perk
