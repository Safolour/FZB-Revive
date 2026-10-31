#R*65536+G*256+B
scoreboard players add @s zombie.rainbow.armor 1
execute if score @s zombie.rainbow.armor matches 0..255 run scoreboard players add @s zombie.rainbow.armor.g 1
execute if score @s zombie.rainbow.armor matches 256..510 run scoreboard players remove @s zombie.rainbow.armor.b 1
execute if score @s zombie.rainbow.armor matches 511..765 run scoreboard players add @s zombie.rainbow.armor.r 1
execute if score @s zombie.rainbow.armor matches 766..1020 run scoreboard players remove @s zombie.rainbow.armor.g 1
execute if score @s zombie.rainbow.armor matches 1021..1275 run scoreboard players add @s zombie.rainbow.armor.b 1
execute if score @s zombie.rainbow.armor matches 1276..1530 run scoreboard players remove @s zombie.rainbow.armor.r 1
execute if score @s zombie.rainbow.armor matches 1531.. run scoreboard players set @s zombie.rainbow.armor 0
scoreboard players set 256 zombie.number 256
scoreboard players set 65536 zombie.number 65536
scoreboard players operation r zombie.rainbow.armor = @s zombie.rainbow.armor.r
scoreboard players operation r zombie.rainbow.armor *= 65536 zombie.number
scoreboard players operation g zombie.rainbow.armor = @s zombie.rainbow.armor.g
scoreboard players operation g zombie.rainbow.armor *= 256 zombie.number
scoreboard players operation b zombie.rainbow.armor = @s zombie.rainbow.armor.b
scoreboard players set rgb zombie.rainbow.armor 0
scoreboard players operation rgb zombie.rainbow.armor += r zombie.rainbow.armor
scoreboard players operation rgb zombie.rainbow.armor += g zombie.rainbow.armor
scoreboard players operation rgb zombie.rainbow.armor += b zombie.rainbow.armor
execute store result entity @s equipment.chest.components."minecraft:dyed_color" int 1 run scoreboard players get rgb zombie.rainbow.armor
execute store result entity @s equipment.legs.components."minecraft:dyed_color" int 1 run scoreboard players get rgb zombie.rainbow.armor
execute store result entity @s equipment.feet.components."minecraft:dyed_color" int 1 run scoreboard players get rgb zombie.rainbow.armor
scoreboard players reset 256 zombie.number
scoreboard players reset 65536 zombie.number
scoreboard players reset r zombie.rainbow.armor
scoreboard players reset g zombie.rainbow.armor
scoreboard players reset b zombie.rainbow.armor
scoreboard players reset rgb zombie.rainbow.armor
