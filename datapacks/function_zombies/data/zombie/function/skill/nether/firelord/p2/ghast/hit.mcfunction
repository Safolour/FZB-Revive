# Zero damage sends the client hurt animation without changing health.
damage @s 0 minecraft:generic

# The hit slowdown is refreshed only in the controllable chase state.
execute if entity @s[tag=firelord.p5.chase,tag=!firelord.p5.fast] run scoreboard players set @s fl.mode 40
