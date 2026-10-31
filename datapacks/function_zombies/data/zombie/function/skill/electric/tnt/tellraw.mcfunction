execute unless score @s zombie.electric.tntcount = @s zombie.electric.tntcount run tellraw @s {"translate":"zb.zombie.tnt.tellraw"}
execute unless score @s zombie.electric.tntcount = @s zombie.electric.tntcount at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1
execute unless score @s zombie.electric.tntcount = @s zombie.electric.tntcount at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1

scoreboard players add @s zombie.electric.tntcount 1
