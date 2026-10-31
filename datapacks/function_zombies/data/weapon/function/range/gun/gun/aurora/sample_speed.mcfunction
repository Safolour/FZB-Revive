# Position delta since the preceding tick, including vertical movement.
execute store result score #x weapon.state run data get entity @s Pos[0] 1000
execute unless score @s weapon.aurora_x = @s weapon.aurora_x run scoreboard players operation @s weapon.aurora_x = #x weapon.state
scoreboard players operation #dx weapon.state = #x weapon.state
scoreboard players operation #dx weapon.state -= @s weapon.aurora_x
scoreboard players operation @s weapon.aurora_x = #x weapon.state
execute unless score #dx weapon.state matches -10000..10000 run scoreboard players set #dx weapon.state 0
scoreboard players operation #dx weapon.state *= #dx weapon.state
execute store result score #y weapon.state run data get entity @s Pos[1] 1000
execute unless score @s weapon.aurora_y = @s weapon.aurora_y run scoreboard players operation @s weapon.aurora_y = #y weapon.state
scoreboard players operation #dy weapon.state = #y weapon.state
scoreboard players operation #dy weapon.state -= @s weapon.aurora_y
scoreboard players operation @s weapon.aurora_y = #y weapon.state
execute unless score #dy weapon.state matches -10000..10000 run scoreboard players set #dy weapon.state 0
scoreboard players operation #dy weapon.state *= #dy weapon.state
execute store result score #z weapon.state run data get entity @s Pos[2] 1000
execute unless score @s weapon.aurora_z = @s weapon.aurora_z run scoreboard players operation @s weapon.aurora_z = #z weapon.state
scoreboard players operation #dz weapon.state = #z weapon.state
scoreboard players operation #dz weapon.state -= @s weapon.aurora_z
scoreboard players operation @s weapon.aurora_z = #z weapon.state
execute unless score #dz weapon.state matches -10000..10000 run scoreboard players set #dz weapon.state 0
scoreboard players operation #dz weapon.state *= #dz weapon.state
scoreboard players operation input.sqrt int = #dx weapon.state
scoreboard players operation input.sqrt int += #dy weapon.state
scoreboard players operation input.sqrt int += #dz weapon.state
function large_number:int_sqrt_simple
scoreboard players operation @s weapon.aurora_speed = output.sqrt int
