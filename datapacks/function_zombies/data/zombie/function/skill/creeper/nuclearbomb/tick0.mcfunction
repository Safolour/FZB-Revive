
scoreboard players add @s zombie.nuclearbomb 1

particle dust{color:[1,0,0],scale:1} ~ ~5 ~ 0.1 10 0.1 0 20 force @a[scores={zombie.nuclearbomb=0,particle=0}]

execute as @a[scores={stat.player=1,zombie.nuclearbomb=0},distance=..3] run scoreboard players set @s zombie.nuclearbomb 1
execute as @a[scores={stat.player=1,zombie.nuclearbomb=1},distance=4..] run scoreboard players set @s zombie.nuclearbomb 0

execute if score @s zombie.nuclearbomb matches ..251 run return fail
function zombie:skill/creeper/nuclearbomb/clear0
