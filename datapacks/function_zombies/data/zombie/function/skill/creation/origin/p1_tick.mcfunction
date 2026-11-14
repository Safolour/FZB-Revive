execute if entity @s[tag=origin.p2] run return 0
execute unless entity @s[tag=origin.ready] run function zombie:skill/creation/origin/init
function zombie:skill/creation/origin/lightning/lock_health
execute unless score @s origin.volley = @s origin.volley run scoreboard players set @s origin.volley 0
execute unless score @s origin.tool = @s origin.tool run scoreboard players set @s origin.tool 0
function zombie:skill/creation/origin/volley/migrate
function zombie:skill/creation/origin/landing/sample
execute if score @s origin.tp_glow matches 1.. run function zombie:skill/creation/origin/tp_glow_tick
scoreboard players add @s origin.age 1
scoreboard players remove @s origin.light_cd 1
scoreboard players remove @s origin.sword_cd 1
execute unless score @s origin.shovel_cd = @s origin.shovel_cd run scoreboard players set @s origin.shovel_cd 100
execute unless score @s origin.pick_cd = @s origin.pick_cd run scoreboard players set @s origin.pick_cd 200
execute unless score @s origin.laser_cd = @s origin.laser_cd run scoreboard players set @s origin.laser_cd 320
scoreboard players remove @s origin.shovel_cd 1
scoreboard players remove @s origin.pick_cd 1
scoreboard players remove @s origin.laser_cd 1
function zombie:skill/creation/origin/melee/tick
execute if entity @s[tag=origin.arrive] run return run function zombie:skill/creation/origin/teleport_tick
execute if entity @s[tag=origin.depart] run return run function zombie:skill/creation/origin/teleport_tick
function zombie:skill/creation/origin/brutality/tick
scoreboard players set @s origin.v_step 0
execute if score @s origin.volley matches 1 run scoreboard players set @s origin.v_step 1
execute if score @s origin.volley matches 1 run function zombie:skill/creation/origin/volley/tick
execute if score @s origin.cast matches 1.. run return run function zombie:skill/creation/origin/lightning/tick
execute if score @s origin.tool matches 3 run return run function zombie:skill/creation/origin/laser/tick
execute if entity @s[tag=!origin.large75,scores={zombie.health=..112500}] run return run function zombie:skill/creation/origin/lightning/large75
execute if entity @s[tag=!origin.large25,scores={zombie.health=..37500}] run return run function zombie:skill/creation/origin/lightning/large25
execute if score @s origin.light_cd matches ..0 run return run function zombie:skill/creation/origin/lightning/begin
execute if score @s origin.v_step matches 1 run return run function zombie:skill/creation/origin/teleport_tick
execute if score @s origin.sword_cd matches ..0 run return run function zombie:skill/creation/origin/sword/begin
execute if score @s origin.laser_cd matches ..0 run return run function zombie:skill/creation/origin/laser/begin
execute if score @s origin.pick_cd matches ..0 run return run function zombie:skill/creation/origin/pickaxe/begin
execute if score @s origin.shovel_cd matches ..0 run return run function zombie:skill/creation/origin/shovel/begin
function zombie:skill/creation/origin/teleport_tick
