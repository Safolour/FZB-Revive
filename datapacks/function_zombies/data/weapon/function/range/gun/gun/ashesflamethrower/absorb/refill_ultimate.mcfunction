scoreboard players add @s weapon.ashes_ult 0
scoreboard players operation #ashes_take weapon.state = #ashes_cap weapon.state
scoreboard players operation #ashes_take weapon.state -= #ashes_target weapon.state
scoreboard players operation #ashes_take weapon.state < @s weapon.ashes_ult
scoreboard players operation #ashes_target weapon.state += #ashes_take weapon.state
scoreboard players operation @s weapon.ashes_ult -= #ashes_take weapon.state
