function system:system_tick0
execute as @e[type=item,tag=revive_essence,limit=16] at @s run function weapon:range/gun/gun/season_spring/essence_tick
execute as @a at @s run function system:tick0_1
execute if score tick system.stat matches 1 run function system:system_tick


execute positioned 9 -58 830 unless entity @a[distance=..10] run return fail
execute if block 9 -58 830 lever[powered=false] if score tick system.stat matches 1 run function _:_reset
execute if block 9 -58 830 lever[powered=true] if score tick system.stat matches 1 run return fail
execute if block 9 -58 830 lever[powered=false] run return fail
function _:_init
