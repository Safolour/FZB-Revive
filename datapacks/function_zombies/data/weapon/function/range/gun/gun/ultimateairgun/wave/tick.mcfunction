
#execute as @s at @s run particle end_rod ~ ~ ~ 0 0 0 0.0125 5 force @a
execute as @s at @s run function weapon:range/gun/gun/ultimateairgun/wave/particle/rotation
execute as @s[scores={weapon.range=3}] at @s run function weapon:range/gun/gun/ultimateairgun/wave/particle/3 with storage weapon root.ultimateairgun.wave_rotation
execute as @s[scores={weapon.range=2}] at @s run function weapon:range/gun/gun/ultimateairgun/wave/particle/2 with storage weapon root.ultimateairgun.wave_rotation
execute as @s[scores={weapon.range=1}] at @s run function weapon:range/gun/gun/ultimateairgun/wave/particle/1 with storage weapon root.ultimateairgun.wave_rotation
data remove storage weapon root

scoreboard players remove @s weapon.range 1
execute if score @s weapon.range matches 1.. run return fail
execute as @s at @s run function weapon:range/gun/gun/ultimateairgun/wave/push
kill @s
