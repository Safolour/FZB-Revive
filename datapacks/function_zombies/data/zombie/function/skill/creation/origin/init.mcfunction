tag @s add origin.ready
scoreboard players add #next origin.owner 1
scoreboard players operation @s origin.owner = #next origin.owner
scoreboard players set @s origin.age 0
scoreboard players set @s origin.phase_age 0
scoreboard players set @s origin.pulse 20
scoreboard players set @s origin.light_cd 180
scoreboard players set @s origin.sword_cd 480
scoreboard players set @s origin.cast 0
scoreboard players set @s origin.big 0
scoreboard players set @s origin.tool 0
scoreboard players set @s origin.volley 0
scoreboard players set @s origin.volley_t 0
scoreboard players set @s origin.v_step 0
scoreboard players set @s origin.busy 0
scoreboard players set @s origin.shovel_cd 100
scoreboard players set @s origin.pick_cd 200
scoreboard players set @s origin.laser_cd 320
function zombie:skill/creation/origin/melee/init
