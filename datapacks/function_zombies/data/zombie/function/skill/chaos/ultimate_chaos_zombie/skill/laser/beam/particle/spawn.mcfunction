summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.laser","skill.ultimatechaoszombie.laser.beam.0","chosen"]}
scoreboard players operation @n[type=marker,tag=chosen] zombie.uuid = @s zombie.uuid
tp @e[type=marker,tag=chosen] ^ ^ ^ ~ 0
tag @e[type=marker,tag=chosen] remove chosen