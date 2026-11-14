scoreboard players set @s fl.shots 1
execute if entity @s[tag=firelord.p3,tag=fl.p3.double] run scoreboard players set @s fl.shots 2
execute if entity @s[tag=firelord.p3,tag=fl.p3.double] run tag @s add fl.p3.clear_double
execute if entity @s[tag=firelord.p3,tag=!fl.p3.double] run tag @s add fl.p3.double
execute if entity @s[tag=fl.p3.clear_double] run tag @s remove fl.p3.double
tag @s remove fl.p3.clear_double
tag @s add fl.volley.first
function zombie:skill/nether/firelord/charge/begin
