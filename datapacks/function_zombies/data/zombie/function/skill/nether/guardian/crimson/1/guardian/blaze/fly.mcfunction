#292 98 134   308 103 143
execute store result storage zombie blaze.fly.x float 0.1 run random value 2920..3080
execute store result storage zombie blaze.fly.y float 0.1 run random value 980..1030
execute store result storage zombie blaze.fly.z float 0.1 run random value 1340..1670

function zombie:skill/remains/blaze/fly/spawn with storage zombie blaze.fly
data remove storage zombie blaze

scoreboard players add @e[type=blaze,tag=skill.blaze] zombie.remains.blaze.match 1
scoreboard players add @e[type=marker,tag=skill.blaze.spawn] zombie.remains.blaze.match 1

tp @s ~ ~ ~ facing entity @e[type=marker,tag=chosen,limit=1]

tag @e[type=marker,tag=chosen] remove chosen
