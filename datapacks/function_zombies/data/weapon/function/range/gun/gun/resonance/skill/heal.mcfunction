# Dynamic sphere, including the caster and full-red-health recipients.
scoreboard players set #res_n weapon.state 0
execute as @a[scores={stat.player=1},gamemode=!spectator,distance=..5] run scoreboard players add #res_n weapon.state 1
scoreboard players operation @s weapon.res_heal = #res_n weapon.state
scoreboard players add @s weapon.res_heal 1
function weapon:range/gun/gun/resonance/skill/ring
execute as @a[scores={stat.player=1},gamemode=!spectator,distance=..5] at @s run function weapon:range/gun/gun/resonance/skill/heal_player
