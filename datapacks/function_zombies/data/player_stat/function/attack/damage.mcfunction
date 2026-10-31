
$execute if score uuid stat.attack matches 20002 unless score @p[scores={weapon.use=1..}] weapon.melee.puncher.timer matches 1.. at @s as @e[tag=hitable,distance=..3,limit=$(affect_enemy),sort=nearest] at @s run function player_stat:attack/damage0
execute if score uuid stat.attack matches 20002 unless score @p[scores={weapon.use=1..}] weapon.melee.puncher.timer matches 1.. run return fail
execute if score uuid stat.attack matches 20002 if score @p[scores={weapon.use=1..}] weapon.melee.puncher.timer matches 1.. run scoreboard players set punch stat.attack 0
$execute if score uuid stat.attack matches 20004 unless score @p[scores={weapon.use=1..}] weapon.melee.ultimatepuncher.timer matches 1.. at @s as @e[tag=hitable,distance=..3,limit=$(affect_enemy),sort=nearest] at @s run function player_stat:attack/damage0
execute if score uuid stat.attack matches 20004 unless score @p[scores={weapon.use=1..}] weapon.melee.ultimatepuncher.timer matches 1.. run return fail
execute if score uuid stat.attack matches 20004 if score @p[scores={weapon.use=1..}] weapon.melee.ultimatepuncher.timer matches 1.. run scoreboard players set punch stat.attack 0
function player_stat:attack/damage0