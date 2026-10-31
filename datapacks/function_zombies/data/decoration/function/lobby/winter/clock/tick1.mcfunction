
scoreboard players set loop lobby.winter.tick 0

execute if score tick lobby.winter.tick matches 0 if entity @s[tag=lobby.winter.clock.pointer3] run tp @s ~ ~ ~ ~-6 ~
execute if score tick lobby.winter.tick matches 0 if entity @s[tag=lobby.winter.clock.pointer2] run tp @s ~ ~ ~ ~-0.1 ~
execute if score tick lobby.winter.tick matches 0 if entity @s[tag=lobby.winter.clock.pointer1] run tp @s ~ ~ ~ ~-0.0016666666666667 ~

execute if score tick0 lobby.winter.tick matches 0 as @s[tag=lobby.winter.clock.pointer1] at @s positioned ^ ^ ^-2 run function decoration:lobby/winter/clock/pointer/hour
execute if score tick0 lobby.winter.tick matches 0 as @s[tag=lobby.winter.clock.pointer2] at @s positioned ^ ^ ^-2 run function decoration:lobby/winter/clock/pointer/minute
execute if score tick0 lobby.winter.tick matches 0 as @s[tag=lobby.winter.clock.pointer3] at @s positioned ^ ^ ^-3 run function decoration:lobby/winter/clock/pointer/second
