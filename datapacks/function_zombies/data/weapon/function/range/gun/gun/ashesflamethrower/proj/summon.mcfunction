# 射手执行（at 射手，带射手朝向）：生成 #ashes_n 颗弹丸
# 录像：第一个点在眼前 1 格
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["gun","ashes_proj","ashes_new"]}
execute as @e[type=marker,tag=ashes_new,limit=1] at @s rotated as @p[scores={weapon.use=1..}] run function weapon:range/gun/gun/ashesflamethrower/proj/init
scoreboard players remove #ashes_n weapon.state 1
execute if score #ashes_n weapon.state matches 1.. run function weapon:range/gun/gun/ashesflamethrower/proj/summon
