# 以假人身份执行：对最近的幸运箱执行一次“右键”
tag @s add chosen
execute as @n[type=marker,tag=luckychest] at @s run function map:luckychest/trigger/use0
tag @s remove chosen
