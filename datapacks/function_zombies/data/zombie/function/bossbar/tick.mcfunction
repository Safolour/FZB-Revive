
tag @s add chosen
function zombie:bossbar/summon
function zombie:bossbar/tp
scoreboard players set @e[type=armor_stand,tag=bossbar,scores={zombie.bossbar_tp=2}] zombie.bossbar_tp 1
tag @s remove chosen